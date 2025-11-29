const { getTracks, getCurrentSong, createPlaylist, addSongsToPlaylist, clearPlaylist } = require('./spotify');

// skips to the previous song
const prevSong = (bot) => {
    let oldSong;

    //get current song
    getCurrentSong().then((song) => {
        //save song name
        oldSong = song.name

        //skip the song
        return bot.spotifyApi.skipToPrevious()
    })

        //get the current song
        .then(() => getCurrentSong())

        //update stuff with new song
        .then((song) => {
            //update the ballot to reflect new song
            bot.updateUtilityMessage(`No longer playing [${oldSong}]\nNow back to [${song.name}]`)

            //update logs
            console.log(`No longer playing [${oldSong}]\nNow back to [${song.name}]`)
        }),
        function (err) {
            //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
            console.log('failed to skip');
        };
}

// skips to the next song
const nextSong = (bot) => {
    let oldSong;

    //get current song
    getCurrentSong().then((song) => {
        //save song name
        oldSong = song.name

        //skip the song
        return bot.spotifyApi.skipToNext()
    })

        //get the current song
        .then(() => getCurrentSong())

        //update stuff with new song
        .then((song) => {
            //update the ballot to reflect new song
            bot.updateUtilityMessage(`Skipped [${oldSong}]\nNow playing [${song.name}]`)

            //update logs
            console.log(`Skipped [${oldSong}]\nNow playing [${song.name}]`)
        }),
        function (err) {
            //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
            console.log('failed to skip');
        };
}

// toggles whether or not to use the query interval or to go by all time
const toggleInterval = (bot) => {
    bot.queryInterval = bot.queryInterval == "" ? bot.baseInterval : ""
    bot.updateUtilityMessage()
}

// ensures that all songs in the database are in the barrel
const barrel = (bot) => {
    // read the barrel for tracks
    getTracks(bot.barrelID)
        .then((barrelTracks) => {
            // convert to uris
            barrelUris = barrelTracks.map((track) => track.track.uri)

            // get distinct uris from the database
            return new Promise((resolve, reject) => {
                bot.query(`SELECT DISTINCT spotify_uri FROM scores`)
                    .then((results) => {
                        console.log(results)
                        resolve({ barrelUris: barrelUris, dbUris: results.rows.map((row) => row.spotify_uri) })
                    })
            })
        })
        .then((item) => {
            let missingUris = []

            // check that each uri is in the barrel
            item.dbUris.forEach((uri) => {
                if (!item.barrelUris.includes(uri)) {
                    missingUris.push(uri)
                }
            })

            return addSongsToPlaylist(bot.barrelID, missingUris)
        })
}

// explain what each utility emoji does
const help = (bot) => {
    let help = `Utilities:\n⏮: Go back one song\n⬇: switch to downvote mode (themojis will now downvote)\n⬆: switch to upvote mode (themojis will now upvote)\n⏭: Go forwards one song\n↕: switch to order mode (themojis will now order their playlist)\n🔀: switch to order mode (themojis will now shuffle their playlist)\n❔: opens this menu`
    bot.updateUtilityMessage(help)
}

// log an upvote in the database for the current song/provided themoji
const upvote = (bot) => {
    bot.currentAction = upvoter
    bot.updateUtilityMessage();
}

const upvoter = (bot, themoji) => {
    // check emoji is valid
    if (!bot.getThemojis().includes(themoji)) {
        console.log(`Tried to upvote a theme that does not exist (${themoji})`);
        bot.updateUtilityMessage(`${themoji} does not exist.`)
        return
    }

    // get current song uri
    // check if a song is playing
    bot.spotifyApi.getMyCurrentPlaybackState()
        .then(function (data) {
            console.log("getting current state")
            // if a song is playling
            if (data.body && data.body.is_playing) {
                // get current song
                return bot.spotifyApi.getMyCurrentPlayingTrack()
            }
            else {
                return new Promise((resolve, reject) => {
                    reject("No song playing")
                })
            }
        })
        // log the upvote
        .then(async (data) => {
            console.log("logging score")
            resolve(await fetch(`localhost:${process.env.API_PORT}/scores`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: {
                    spotify_uri: data.body.item.uri,
                    score: 1,
                    song_name: data.body.item.name,
                    themoji: themoji
                }
            }))
        })
        //  bot.logScore(data.body.item.uri, data.body.item.name, themoji, 1)
        .then(function (scores) {
            console.log("upvote logged")
            // update the vote message to reflect latest score change
            bot.updateVoteMessage(`[${scores.songName}] has a score of [|| ${scores.intervalScore} ||] over the last ${bot.baseInterval} and has an all time score of [|| ${scores.totalScore} ||] for ${themoji}`)
            console.log(`[${scores.songName}] has a score of [ ${scores.intervalScore} ] over the last ${bot.baseInterval} and has an all time score of [ ${scores.totalScore} ] for ${themoji}`)
        })
        .catch((error) => {
            if (error === "No song playing") {
                //this is fine
                console.log("No song is currently playing.")
            }
        })
}

// log a downvote in the database for the current song/provided themoji
const downvote = (bot) => {
    bot.currentAction = downvoter
    bot.updateUtilityMessage();
}

const downvoter = (bot, themoji) => {
    //check emoji is valid
    if (!bot.getThemojis().includes(themoji)) {
        console.log(`Tried to downvote a theme that does not exist (${themoji})`);
        bot.updateUtilityMessage(`${themoji} does not exist.`)
        return
    }

    //get current song uri
    // check if a song is playing
    bot.spotifyApi.getMyCurrentPlaybackState()
        .then(function (data) {
            console.log("getting current state")
            // if a song is playling
            if (data.body && data.body.is_playing) {
                // get current song
                return bot.spotifyApi.getMyCurrentPlayingTrack()
            }
            else {
                return new Promise((resolve, reject) => {
                    reject("No song playing")
                })
            }
        })
        // log the downvote
        .then((data) => bot.logScore(data.body.item.uri, data.body.item.name, themoji, -1))
        // update the vote message to reflect latest score change
        .then(function (scores) {
            bot.updateVoteMessage(`[${scores.name}] has a score of [|| ${scores.interval_score} ||] over the last ${bot.baseInterval} and has an all time score of [|| ${scores.total_score} ||] for ${themoji}`)
            console.log(`[${scores.name}] has a score of [ ${scores.interval_score} ] over the last ${bot.baseInterval} and has an all time score of [ ${scores.total_score} ] for ${themoji}`)
        })
        .catch((error) => {
            if (error === "No song playing") {
                //this is fine
                console.log("No song is currently playing.")
            }
        })
}

// order the playlist with the provided theme (from biggest to smallest score)
const order = (bot) => {
    bot.lastTime = new Date()
    bot.currentAction = orderer
    bot.updateUtilityMessage();
}

const orderer = (bot, themoji) => {
    // check emoji is valid
    if (!bot.getThemojis().includes(themoji)) {
        console.log(`Tried to order a theme that does not exist (${themoji})`);
        bot.updateUtilityMessage(`${themoji} does not exist.`)
        return
    }

    // check if the the order mode was last set more than 60 seconds ago
    let currTime = new Date()
    if (currTime - bot.lastTime > 1000 * 60) {
        //update the ballot
        bot.updateUtilityMessage(`Are you sure you want to order ${themoji}?\n(it has been ${(currTime - bot.lastTime) / 1000} seconds since the mode was set to order)`)
        console.log(`Are you sure you want to order ${themoji}?\n(it has been ${(currTime - bot.lastTime) / 1000} seconds since the mode was set to order)`)

        return
    }

    // update the ballot
    bot.updateUtilityMessage(`Ordering ${themoji}`)
    console.log(`Ordering ${themoji}`)

    let songsAddedToPlaylist = 0

    // clear playlist
    clearPlaylist(bot.themePlaylistIDFromEmoji(themoji))

        // get the relevant uris
        .then(() => bot.orderedUris(themoji))

        // add all songs to playlist
        .then((uris) => {
            addSongsToPlaylist(bot.themePlaylistIDFromEmoji(themoji), uris)
            songsAddedToPlaylist = uris.length
        })

        // update ballot
        .then(() => {
            bot.updateUtilityMessage(`Finished Ordering ${themoji}`)

            console.log(`Finished Ordering ${themoji}. Playlist should have ${songsAddedToPlaylist} songs.`)
        })
}

// shuffle the playist with the provided theme (according to the bot's current query interval)
const shuffle = (bot) => {
    bot.lastTime = new Date()
    bot.currentAction = shuffler
    bot.updateUtilityMessage();
}

const shuffler = (bot, themoji) => {
    // check emoji is valid
    if (!bot.getThemojis().includes(themoji)) {
        console.log(`Tried to shuffle a theme that does not exist (${themoji})`);
        bot.updateUtilityMessage(`${themoji} does not exist.`)
        return
    }

    // check if the the shuffle mode was last set more than 60 seconds ago
    let currTime = new Date()
    if (currTime - bot.lastTime > 1000 * 60) {
        //update the ballot
        bot.updateUtilityMessage(`Are you sure you want to shuffle ${themoji}?\n(it has been ${(currTime - bot.lastTime) / 1000} seconds since the mode was set to shuffle)`)
        console.log(`Are you sure you want to shuffle ${themoji}?\n(it has been ${(currTime - bot.lastTime) / 1000} seconds since the mode was set to shuffle)`)

        return
    }

    // update the vote message
    bot.updateUtilityMessage(`Shuffling ${themoji}`)
    console.log(`Shuffling ${themoji}`)

    let songsAddedToPlaylist = 0

    // clear playlist
    clearPlaylist(bot.themePlaylistIDFromEmoji(themoji))

        // get the relevant uris
        .then(() => bot.orderedUris(themoji))

        // shuffle the songs and add them all to the playlist
        .then((uris) => {
            songsAddedToPlaylist = uris.length

            let shuffledUris = []

            for (let i = uris.length - 1; i >= 0; i--) {
                // choose a random song to shuffle
                let randomIndex = Math.floor(Math.random() * uris.length)
                let uri = uris[randomIndex]

                // remove the song from the unshuffled list
                uris.splice(randomIndex, 1)

                // add it to the shuffled list
                shuffledUris.push(uri)
            }

            // add the shuffled songs to the playlist
            return addSongsToPlaylist(bot.themePlaylistIDFromEmoji(themoji), shuffledUris)
        })

        // update ballot
        .then(() => bot.updateUtilityMessage(`Finished Shuffling ${themoji}. Playlist should have ${songsAddedToPlaylist} songs.`))
}

// order the playlist with the provided theme (from smallest to biggest score)
const reverse = (bot) => {
    bot.lastTime = new Date()
    bot.currentAction = reverser
    bot.updateUtilityMessage();
}

const reverser = (bot, themoji) => {
    //check emoji is valid
    if (!bot.getThemojis().includes(themoji)) {
        console.log(`Tried to reverse a theme that does not exist (${themoji})`);
        bot.updateUtilityMessage(`${themoji} does not exist.`)
        return
    }

    // check if the the reverse mode was last set more than 60 seconds ago
    let currTime = new Date()
    if (currTime - bot.lastTime > 1000 * 60) {
        //update the ballot
        bot.updateUtilityMessage(`Are you sure you want to reverse ${themoji}?\n(it has been ${(currTime - bot.lastTime) / 1000} seconds since the mode was set to reverse)`)
        console.log(`Are you sure you want to reverse ${themoji}?\n(it has been ${(currTime - bot.lastTime) / 1000} seconds since the mode was set to reverse)`)

        return
    }

    //update the ballot
    bot.updateUtilityMessage(`Reversing ${themoji}`)
    console.log(`Reversing ${themoji}`)

    let songsAddedToPlaylist = 0

    // clear playlist
    clearPlaylist(bot.themePlaylistIDFromEmoji(themoji))

        // get the relevant uris
        .then(() => bot.orderedUris(themoji))

        // add all songs to playlist
        .then((uris) => {
            songsAddedToPlaylist = uris.length
            addSongsToPlaylist(bot.themePlaylistIDFromEmoji(themoji), uris.reverse())
        })

        // update ballot
        .then(() => bot.updateUtilityMessage(`Finished Reversing ${themoji}. Playlist should have ${songsAddedToPlaylist} songs.`))
}

// create a new theme with the provided themoji
const create = (bot) => {
    bot.currentAction = creater
    bot.updateUtilityMessage();
}

const creater = (bot, themoji) => {
    //check emoji is valid
    if (bot.getThemojis().includes(themoji)) {
        console.log(`Tried to create a theme that already exists (${themoji})`);
        bot.updateUtilityMessage(`${themoji} already exists.`)
        return
    }

    console.log(`Attempting to create a theme ${themoji}`);

    //create a playlist
    createPlaylist(themoji)
        .then((playlistStuff) => {
            //add theme to list of themes
            bot.multiThemes.push
                ({
                    emoji: themoji,
                    id: playlistStuff.playlistID
                });

            //save the new info to file
            bot.saveToDB()

            // send new playlist/theme to user
            bot.updateUtilityMessage(`${themoji}\n${playlistStuff.playlistURL}`)

            //react new emoji to VoteMessage
            bot.multiVoteMessage.react(themoji)
        });
}

// initialize the deletion process for the provided themoji
const requestDelete = (bot) => {
    bot.currentAction = requester
    bot.updateUtilityMessage();
}

const requester = (bot, themoji) => {
    //check emoji is valid
    if (!bot.getThemojis().includes(themoji)) {
        console.log(`Tried to delete a theme that does not exist (${themoji})`);
        bot.updateUtilityMessage(`${themoji} does not exist.`)
        return
    }

    //send warning to user
    bot.deletingEmoji = themoji
    bot.multiUtilityMessage.channel.send(`Are you sure you want to delete ${themoji}?`)
        .then(sent => {
            bot.deleteMessage = sent
            bot.reactAll(bot.deleteEmojis, sent)
        })
}

// confirm the deletion of a theme
// so like when you click the delete button its like "are you sure"
// and this fires after you say yes on that.
const confirmDelete = (bot) => {
    //removes the theme from the list of themes, 
    for (let themeIndex in bot.multiThemes) {
        let theme = bot.multiThemes[themeIndex]
        if (theme.emoji == bot.deletingEmoji) {
            bot.multiThemes.splice(themeIndex, 1)
        }
    }

    //remove the emoji from the VoteMessage
    bot.multiVoteMessage.reactions.cache.get(bot.deletingEmoji).remove()

    // update VoteMessage to reflect deletion
    bot.updateUtilityMessage(`Deleted ${bot.deletingEmoji}`)

    // save changes
    bot.saveToDB()

    // delete warning message
    console.log("deleting message")
    bot.deleteMessage.delete()
    bot.deleteMessage = null
    bot.deletingEmoji = null
}

// cancel the deletion of a theme
const rejectDelete = (bot) => {
    //update VoteMessage to reflect cancellation
    bot.updateUtilityMessage(`Did not delete ${bot.deletingEmoji}`)

    //delete warning message
    bot.deleteMessage.delete()
    bot.deleteMessage = null
    bot.deletingEmoji = null
}

module.exports = {
    prevSong,
    nextSong,
    toggleInterval,
    barrel,
    help,
    upvote,
    upvoter,
    downvote,
    downvoter,
    order,
    orderer,
    shuffle,
    shuffler,
    reverse,
    reverser,
    create,
    creater,
    requestDelete,
    requester,
    confirmDelete,
    rejectDelete
};