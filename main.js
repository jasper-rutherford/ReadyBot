const Discord = require('discord.js');
const SpotifyWebApi = require('spotify-web-api-node');
const client = new Discord.Client();
const fs = require('fs');
const express = require('express');

const { tokenDiscord, discordToken, clientId, clientSecret } = require('./data/config.json');
const { resolve } = require('path');
const open = require('opn');

const app = express();
const { Pool } = require('pg');
const { format } = require('date-fns');

const interval = "7 days"; // the range of time to include song votes in the query when not sorting by all time

//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: false,
    temp: true,
    tokenDiscord: tokenDiscord,
    prefix: '~',
    altPrefix: '\\',
    client: client,
    channelTypes: ['dm', 'text'],
    messageTypes: ['commands', 'specials'],
    guildID: '752727453918691402',
    guild: undefined,
    jaspaDM: '754507044312317962',
    jaspaID: '130880023069589505',
    botID: '754498512359653466',

    // credentials are optional /////this comment is from the template I built off of. Maybe it is true? Maybe not.
    spotifyApi: new SpotifyWebApi({
        clientId: clientId,
        clientSecret: clientSecret,
        redirectUri: 'http://localhost:8888/callback'
    }),
    spotifyUserID: '446i69szgjkow87ew9yjbbhnn',             //my user id

    //NEW 12/17 - keep
    commandMessage: null,                                   // the message from the user which requested a command
    spotifyChannel: '904467973434134589',                   // default location to send ballot 
    themeToDelete: undefined,                               // used to confirm that a theme should be deleted

    //new as of 2/13 (multi voting update)
    multiThemes: [],                                        // stores the themes and their info (name, emoji, playlistID)
    multiSongs: [],                                         // stores the songs and their info (name, uri, scores)
    multiDefaultSongScore: 0,                               // the default score a song should have for any theme
    multiVoteMessage: null,                                 // the message which the user can react to for voting on themes/scores
    multiUtilityMessage: null,                              // the message which the user can react to for doing various utility operations (skip, back, order, shuffle)
    multiMode: 'UPVOTE',                                    // the current mode selected via the utility message. Can be {UPVOTE, DOWNVOTE, ORDER, SHUFFLE, CREATE, DELETING, DELETE}
    utilityEmojis:                                          // the emoji who perform actions for the utility message
        ["⏮", "⬇", "⬆", "⏭", "🔀", "↕", "📅", "🆕", "🗑", "❔"],
    deletingEmoji: null,                                    // the emoji to be deleted (used to warn the user/prevent accidental deletion)
    deleteMessage: null,                                    // the message warning the user about their potential deletion
    deleteEmojis: ["✅", "❌"],                             // the emoji options for on the delete warning message

    baseInterval: interval,
    queryInterval: interval,                                // the range of time to include song votes in the query. default to interval
    
    initialUpdates: function () {
        // open the login page
        open('http://localhost:8888/login')

        // const pool = new Pool({
        //     user: 'postgres',
        //     host: 'localhost',
        //     database: 'songs',
        //     password: 'postgres',
        //     port: 5430, 
        // });

        // pool.query('SELECT * FROM scores', (error, results) => {
        //     if (error) {
        //         console.error('Error executing query:', error);
        //     } else {
        //         console.log('Query results:', results.rows);
        //     }
        // });

        // // Release the connection back to the pool
        // pool.end();

    },

    //i despise this helpers stuff, but removing it is just gonna have to wait.
    helpers: function (name, params) {
        //check if the helper exists
        if (client.things.get('helpers').get(name) != undefined) {
            //run the helper
            var out = client.things.get('helpers').get(name).execute(params, this);

            if (out != undefined) {
                return out;
            }
        }
    },

    loadSpot: async function () {
        //test stuff
        bot.testStuff();

        //load themes/songs in from the file
        bot.readFromFile();

        //send the ballots
        bot.helpers('sendballots', bot.client.channels.cache.get(bot.spotifyChannel));
    },

    //gets the list of emojis from the list of themes
    getThemojis: function () {
        let emojis = []
        for (let theme of bot.multiThemes) {
            emojis.push(theme.emoji)
        }
        return emojis
    },

    getTracks(playlistID) {
        //return a promise
        return new Promise((resolve, reject) => {
            //read info from the playlist 
            bot.spotifyApi.getPlaylist(playlistID)

                //send the length of the playlist into this.reading so that reading knows how much to scan
                .then((playlistInfo) => this.gettingTracks(playlistInfo.body.tracks.total, playlistID))

                //resolve the tracks back out to the promise
                .then((tracks) => resolve(tracks))

                //error handling 
                .catch(function (error) {
                    if (error.statusCode === 500 || error.statusCode === 502) {
                        //report server error
                        console.log("Server error, trying again");

                        //try again
                        this.getTracks(playlistID)

                            //resolve with results of successful attempt
                            .then((tracks) => resolve(tracks))

                            //error handling
                            .catch((error) => console.log("error while retrying this.getTracks\n", error));
                    }
                    else {
                        console.log('Something went wrong in this.getTracks');
                        console.log(error);
                    }
                });
        });
    },

    gettingTracks(goal, playlistID, totTracks = [], newTracks = []) {
        //add the next batch of tracks onto the total list of tracks
        Array.prototype.push.apply(totTracks, newTracks);

        console.log("reading chunk " + (1 + Math.ceil(totTracks.length / 100)) + "/" + (1 + Math.ceil(goal / 100)));

        //return a promise 
        return new Promise((resolve, reject) => {
            //if we have read all tracks, resolve with the tracks
            if (totTracks.length == goal) {
                resolve(totTracks);
            }
            //otherwise
            else {
                //get the next batch of tracks
                bot.spotifyApi.getPlaylistTracks(playlistID, { offset: totTracks.length })

                    //pass that next batch into the next step of this.reading
                    .then((tracksInfo) => this.gettingTracks(goal, playlistID, totTracks, tracksInfo.body.items))

                    //the results of that step will be the final results (recursion go brrr)
                    .then((result) => resolve(result))

                    //error handling (sHouLd NeVeR hApPeN)
                    .catch(function (error) {
                        if (error.statusCode === 500 || error.statusCode === 502) {
                            //report server error
                            console.log("Server error, trying again");

                            //try again
                            bot.gettingTracks(goal, playlistID, totTracks, newTracks)

                                //resolve with the result when successful
                                .then((result) => resolve(result))

                                //error handling
                                .catch((error) => console.log("error while retrying this.gettingTracks\n", error));
                        }
                        else {
                            console.log('Something went wrong in this.gettingTracks');
                            console.log(error);
                        }
                    });
            }
        })
    },

    getCurrentSong() {
        return new Promise((resolve, reject) => {
            console.log("getting current song")

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
                            console.log("no song playing")
                            reject(null)
                        })
                    }
                })
                .then(function (data) {
                    //current song uri
                    resolve(data.body.item);
                })
        })
    },

    addTheme(themeName) {
        bot.themes.push(themeName);
        bot.saveThemes();
    },

    emojiAvailable: function (emoji) {
        if (emoji === "❔") {
            return false
        }

        for (let theme of bot.multiThemes) {
            if (theme.emoji === emoji) {
                return false
            }
        }

        return true
    },

    //gives each song a default song score for the provided emoji
    createDefaultScores: function (emoji) {
        for (let song of bot.multiSongs) {
            song.scores.set(emoji, bot.multiDefaultSongScore);
        }
    },

    // saves the list of themes and list of songs to the file
    saveToFile: function () {
        console.log(`Saving themes and songs to file`)

        //what to save
        var wrapper =
        {
            themes: bot.multiThemes,
            songs: []
        }

        //convert songs into the wrapper (discord collections cant be json stringified)
        for (let song of bot.multiSongs) {
            let scores = []

            for (let emoji of song.scores.keys()) {
                let scoreInfo = song.scores.get(emoji)
                scores.push(
                    {
                        emoji: emoji,
                        score: scoreInfo.score,
                        peakScore: scoreInfo.peakScore,
                        date: scoreInfo.date
                    })
            } // TODO: i should switch over to using a database. each record would be a song, theme, updated score, and timestamp. ordering takes the latest score/timestamp for each song and orders by that.

            wrapper.songs.push({
                name: song.name,
                uri: song.uri,
                scores: scores
            })
        }

        //where to save to
        var fileName = './data/spotify/multidata.json';

        //saves the thing to the file
        fs.writeFileSync(fileName, JSON.stringify(wrapper, null, 4), e => {
            if (e) throw e;
        });

        //log to console
        console.log(`Saved themes and songs to file`)
    },

    readFromFile: function () {
        console.log("reading themes and songs from file")

        //read in wrapped themes/songs
        let wrapper = JSON.parse(fs.readFileSync('./data/spotify/multidata.json'));

        bot.multiThemes = wrapper.themes

        bot.multiSongs = []

        //unwrap songs back into discord collections
        for (let song of wrapper.songs) {
            let scores = new Discord.Collection();

            for (let scoreInfo of song.scores) {
                scores.set(scoreInfo.emoji, { score: scoreInfo.score, peakScore: scoreInfo.peakScore, date: new Date(scoreInfo.date) })
            }

            bot.multiSongs.push({
                name: song.name,
                uri: song.uri,
                scores: scores
            })
        }
    },

    //finds the theme with the provided emoji and returns that theme's playlistID (null if emoji not found)
    themePlaylistIDFromEmoji: function (emoji) {
        for (let theme of bot.multiThemes) {
            if (theme.emoji === emoji) {
                return theme.id
            }
        }

        return null
    },

    createPlaylist: function (themeName) {
        return new Promise((resolve, reject) => {
            //create the playlist
            bot.spotifyApi.createPlaylist(themeName, { public: true })

                //resolve with the playlistinfo
                .then((playlistInfo) => {
                    console.log(`Here's ${themeName}:\n${playlistInfo.body.external_urls.spotify}`)
                    resolve(
                        {
                            playlistID: playlistInfo.body.id,
                            playlistURL: playlistInfo.body.external_urls.spotify
                        })
                })

                //errors :)
                .catch((error) => {
                    if (error.statusCode === 500 || error.statusCode === 502) {
                        console.log("Server error, trying again");
                        bot.createPlaylist(themeName)
                            .then((playlistStuff) => resolve(playlistStuff))
                    }
                    else {
                        console.log("failed to create playlist - ")
                        console.log(error)
                    }
                })
        })
    },

    updateUtilityMessage: function (message = null) {
        let out = ""
        if (message != null) {
            out += `${message}\n`
        }

        let intervalMessage = ` | ${bot.queryInterval == "" ? "All Time" : "Past Week"}`
        let messageContent = `[Current Mode: ${bot.multiMode}${["ORDER", "REVERSE", "SHUFFLE"].includes(bot.multiMode) ? intervalMessage : ""}]`
        bot.multiUtilityMessage.edit(`${out}${messageContent}`)
    },

    updateVoteMessage: function (message) {
        console.log("updating vote message")
        bot.multiVoteMessage.edit(message)
    },

    //gets the song which corresponds with the provided uri from the provided list of songs
    //returns null if uri is not found
    getSongByUri(uri, songs) {
        console.log("getting song by uri")
        for (let song of songs) {
            if (song.uri === uri) {
                console.log("song found")
                return song
            }
        }

        console.log("song not found")

        return null;
    },

    //takes a list of songs, returns a list of all the songs that have positive scores for the provided emoji
    positiveScores(emoji, songs) {
        let positiveScores = []

        for (let song of songs) {
            if (song.scores.get(emoji)?.score > 0) {
                positiveScores.push(song)
            }
        }

        return positiveScores
    },

    addSongsToPlaylist(playlistID, uris) {
        return new Promise((resolve, reject) => {
            console.log("getting adjustments")

            // get adjustments
            let adjustments = this.compareUriLists(playlistID, [], uris);
            console.log("got adjustments")

            // adjust them
            this.adjust(adjustments)

                // resolve
                .then(() => {
                    console.log("adjusted adjustments")
                    resolve()
                })

                // error
                .catch((error) => console.log("Errored: ", error))
        })
    },

    removeSongsFromPlaylist(playlistID, uris) {
        return new Promise((resolve, reject) => {
            console.log("getting adjustments")

            //get adjustments
            let adjustments = this.compareUriLists(playlistID, uris, []);
            console.log("got adjustments")

            //adjust them
            this.adjust(adjustments)

                //resolve
                .then(() => {
                    console.log("adjusted adjustments")
                    resolve()
                })

                //error
                .catch((error) => console.log("Errored: ", error))
        })
    },

    convertSongsToUris: function (songs) {
        let uris = []

        for (let song of songs) {
            uris.push(song.uri);
        }

        return uris
    },

    //reacts all emojis from the list of themes onto the provided message
    reactAll(emojis, message) {
        if (emojis.length == 0) {
            //done
            return
        }

        //pop one emoji from the list, create a new list with all remaining emojis
        let emoji = emojis[0]
        let remainingEmojis = []
        for (let i = 1; i < emojis.length; i++) {
            remainingEmojis.push(emojis[i])
        }

        //react the emoji to the message, then react the rest
        message.react(emoji).then(() => this.reactAll(remainingEmojis, message))
    },

    adjust: function (adjustments) {
        // console.log("this.adjustments received:\n", adjustments);
        return new Promise((resolve, reject) => {
            //only adjust things if there are things to adjust
            if (adjustments.length > 0) {
                //get a bunch of uris to send out to the api in one batch

                //a list for all the uris in the batch
                let uris = [];

                //a list of all adjustments in the batch (used for retrying on server errors)
                let batchAdjustments = [];

                //grab an adjustment from the list (all adjustments in this batch will be similar to this one)
                let template = adjustments[0];

                //remove that adjustment from the list
                adjustments.splice(0, 1);

                //add it to relevant lists
                uris.push(template.uri);
                batchAdjustments.push(template);

                //loop through all other adjustments
                for (let i = 0; i < adjustments.length && uris.length < 100; i++) {
                    //the adjustment at this step
                    let temp = adjustments[i];

                    //if the adjustment at this step matches the template
                    if (temp.adjustment === template.adjustment && temp.id === template.id) {
                        //remove it from the list of adjustments
                        adjustments.splice(i, 1);
                        i--

                        //dont support songs that are local
                        if (temp.uri.indexOf("spotify:local") == -1) {
                            //add its uri to the relevant lists
                            uris.push(temp.uri);
                            batchAdjustments.push(temp);
                        }
                        else {
                            console.log(temp.uri + " is local and unsupported.");
                        }
                    }
                }

                //adjust the playlist via the batch

                //if the adjustment is a clear
                if (template.adjustment === "clear") {
                    //convert the uris to a list of objects (api is stupid)
                    let objectUris = [];

                    uris.forEach(uri => {
                        objectUris.push({ uri: uri });
                    });

                    console.log("removing " + objectUris.length + " songs from playlist " + template.id);

                    //remove the provided uris from the template's playlist
                    bot.spotifyApi.removeTracksFromPlaylist(template.id, objectUris)

                        //on success, adjust the remaining adjustments
                        .then(() => this.adjust(adjustments))

                        //after all other adjustments have been adjusted, resolve 
                        .then((() => resolve()))

                        //error handling
                        .catch(function (error) {
                            //if it is a server error we can just retry
                            if (error.statusCode === 500 || error.statusCode === 502) {
                                //report server error to console
                                console.log("Server error, trying again");

                                //add batch adjustments back into the list of adjustments
                                Array.prototype.push.apply(adjustments, batchAdjustments);

                                //retry
                                bot.adjust(adjustments)

                                    //resolve
                                    .then(() => resolve())

                                    //report error (is this dead code?)
                                    .catch((error) => console.log("error while retrying a clear in this.adjust", error));
                            }
                            else {
                                console.log('error while clearing in this.adjust');
                                console.log(error);
                            }
                        });
                }
                //if this adjustment is an addition
                if (template.adjustment === "add") {
                    console.log("adding " + uris.length + " songs to playlist " + template.id);

                    //add the provided uris to the template's playlist
                    bot.spotifyApi.addTracksToPlaylist(template.id, uris)

                        //on success, adjust the remaining adjustments
                        .then(() => this.adjust(adjustments))

                        //after all other adjustments have been adjusted, resolve 
                        .then((() => resolve()))

                        //error handling
                        .catch(function (error) {
                            //if it is a server error we can just retry
                            if (error.statusCode === 500 || error.statusCode === 502) {
                                //report server error to console
                                console.log("Server error, trying again");

                                //add batch adjustments back into the list of adjustments
                                Array.prototype.push.apply(adjustments, batchAdjustments);

                                //retry
                                bot.adjust(adjustments)

                                    //resolve
                                    .then(() => resolve())

                                    //report error (is this dead code?)
                                    .catch((error) => console.log("error while retrying an add in this.adjust", error));
                            }
                            else {
                                console.log('error while adding in this.adjust');
                                console.log(error);
                            }
                        });
                }
            }
            else {
                console.log("All adjustments adjusted.\n")
                resolve();
            }
        });
    },

    testStuff: function () {
        // use this method for testing shit
    },

    //gets a list of all the adjustments that need to be made to the old list to make it match the new list
    compareUriLists(playlistID, oldUriList, newUriList) {
        let adjustments = [];

        //for all uri's in the old list
        for (let oldIndex in oldUriList) {
            //get each uri
            let oldUri = oldUriList[oldIndex];

            //if the new list doesn't contain that uri
            if (!newUriList.includes(oldUri)) {
                //add an adjustment to remove the song with that uri from the playlist
                adjustments.push(
                    {
                        adjustment: "clear",
                        id: playlistID,
                        uri: oldUri
                    });
            }
        }

        let clears = adjustments.length;

        if (clears > 0) {
            console.log(`identified ${clears} songs to be cleared from playlist [${playlistID}]`);
        }

        //for all uri's in the new list
        for (let newIndex in newUriList) {
            //get each uri
            let newUri = newUriList[newIndex];

            //if the old list doesn't contain that uri
            if (!oldUriList.includes(newUri)) {
                //add an adjustment to add the song with that uri to the playlist
                adjustments.push(
                    {
                        adjustment: "add",
                        id: playlistID,
                        uri: newUri
                    });
            }
        }

        let adds = adjustments.length - clears;

        if (adds > 0) {
            console.log(`identified ${adds} songs to be added to playlist [${playlistID}]`);
        }

        return adjustments;
    },

    //song: the song whose score is to be changed
    //diff: how much to change the score by
    changeSongScore: function (song, emoji, diff) {
        // relevant score info
        let scoreInfo = song.scores.get(emoji)

        // if the info doesnt exist, create it
        if (scoreInfo == undefined) {
            scoreInfo = {
                score: 0,
                peakScore: 0,
                date: new Date()
            }

            song.scores.set(emoji, scoreInfo)
        }

        console.log("old info: ")

        // log old info
        console.log(scoreInfo)

        // update score info
        scoreInfo.score += diff;

        // if the new score is higher than the peak score, update the peak score/date
        if (scoreInfo.score > scoreInfo.peakScore) {
            scoreInfo.peakScore = scoreInfo.score;
            scoreInfo.date = new Date();
        }

        console.log("new info: ")

        // log new info
        console.log(scoreInfo)

        //save the updated song list to file
        bot.saveToFile()
    },

    //check song exists in the list of songs
    ensureMultiSongExists: function (uri, name) {
        // dont support local songs
        if (uri.indexOf("spotify:local") != -1) {
            console.log(`${name} is local and unsupported`);
            bot.updateVoteMessage(`${name} is local and unsupported`)
        }

        //if song doesnt exist
        if (bot.getSongByUri(uri, bot.multiSongs) == null) {
            let scores = new Discord.Collection()

            //add a song to the list with default scores
            bot.multiSongs.push({
                name: name,
                uri: uri,
                scores: scores
            })
        }
    },

    query: function (queryStatement) {
        return new Promise((resolve, reject) => {
            const pool = new Pool({
                user: 'postgres',
                host: 'localhost',
                database: 'songs',
                password: 'postgres',
                port: 5430, 
            });

            pool.query(queryStatement, (error, results) => {
                if (error) {
                    console.error('Error executing query:', error);
                    reject(error)
                } else {
                    console.log('successfully queried: ', queryStatement);
                    resolve(results)
                }
            });


            pool.end();
        })
    },

    logScore: function (uri, name, emoji, score) {
        return new Promise((resolve, reject) => {
        let queryStatement = `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('${uri}', '${score}', '${name.replace(/'/g, "''")}', '${format(new Date(), "yyyy-MM-dd HH:mm:ss.SSS")}', '${emoji}')`;
        
        this.query(queryStatement).then((results) => {
            console.log("Successfully logged score")
            return bot.getSongScores(uri, name, emoji)
        })
        .then((scores) => {
            resolve(scores)
        })
        .catch((error) => {
            console.log("Error logging score")
        }
        )})
    },

    orderedUris: function (emoji) {
       let orderedUrisHelper = bot.queryInterval == "" ? "" : `AND s1.stamp >= NOW() - INTERVAL '${bot.queryInterval}'`

        let query = `SELECT DISTINCT song_name, spotify_uri, (
            SELECT SUM(score)
            FROM scores AS s2
            WHERE s2.spotify_uri = s1.spotify_uri
              AND s2.themoji = '${emoji}'
               ${orderedUrisHelper}
          ) AS total_score
          FROM scores AS s1
          WHERE s1.themoji = '${emoji}'
            ${orderedUrisHelper}
            ORDER BY total_score DESC;`

        return new Promise((resolve, reject) => {
            this.query(query).then((results) => {

                console.log(`song name, score (${bot.queryInterval == "" ? "All time" : "Last " + bot.queryInterval}):`)
                let uris = []

                for (let result of results.rows) {
                    uris.push(result.spotify_uri)

                    console.log(result.song_name, result.total_score)
                }

                resolve(uris)
            })
            .catch((error) => {
                console.log("Error getting ordered uris")
                reject(error)
            })
        })
    },

    getSongScores: function (uri, name, themoji) {
        let query =`
        SELECT
            SUM(score) AS total_score,
            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '${bot.baseInterval}' THEN score ELSE 0 END) AS interval_score
        FROM scores
        WHERE spotify_uri = '${uri}'
        
        AND themoji = '${themoji}';`
        
        return new Promise((resolve, reject) => {
            this.query(query).then((results) => {
                let output = {
                    name: name,
                    interval_score: results.rows[0].interval_score,
                    total_score: results.rows[0].total_score,
                }

                console.log("retrieved scores for uri/themoji " + uri + "/" + themoji + ":")
                console.log(output)

                resolve(output)
            })
            .catch((error) => {
                console.log("Error getting score for uri " + uri)
                reject(error)
            })
        })
    }
}

//switches the variables to the test bot's stuff
if (bot.testbuild) {
    bot.tokenDiscord = discordToken;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '755291736871272490';
    bot.botID = '754865264390176839';
}

client.things = new Discord.Collection();

//sets up the text and dm folders
bot.channelTypes.forEach(channelType => {
    bot.messageTypes.forEach(messageType => {
        client.things.set(channelType + messageType, new Discord.Collection());

        var directory = './' + channelType + '/' + messageType + '/';

        const files = fs.readdirSync(directory).filter(file => file.endsWith('.js'));
        for (const file of files) {
            const command = require(directory + `${file}`);

            if (channelType + messageType === 'dmspecials' || channelType + messageType === 'textspecials') {
                client.things.get(channelType + messageType).set(command.id, command);
            }
            else {
                client.things.get(channelType + messageType).set(command.name, command);

                if (command.alt != undefined) {
                    client.things.get(channelType + messageType).set(command.alt, command);
                }
            }
        }
    })
});

//sets up the helper folder
client.things.set('helpers', new Discord.Collection());

var directory = './helpers/';

const files = fs.readdirSync(directory).filter(file => file.endsWith('.js'));
for (const file of files) {
    const command = require(directory + `${file}`);

    client.things.get('helpers').set(command.name, command);

    if (command.alt != undefined) {
        client.things.get('helpers').set(command.alt, command);
    }
}

client.once('ready', () => {
    bot.initialUpdates();

    console.log('Arbiot 1.0');

    if (bot.testbuild) {
        console.log('<test build>');
    }
});

client.on('message', message => {
    //ignore messages from itself
    if (message.author.bot) return;

    if (message.channel.type === 'dm') {
        var userID = message.author.id;

        //special jaspa treatment
        if (userID === bot.jaspaID) {
            //send to jaspa
            client.things.get('dmspecials').get(userID).execute(message, bot);
        }
        //everybody that's not me
        else {
            bot.helpers('relayMsgToJaspa', { message: message });
        }
    }
    else if (message.channel.type === 'text') {
        //if the message starts with \ and is from jasper
        if (message.content.startsWith(bot.altPrefix) && (message.author.id === bot.jaspaID || message.author.id === "914641118308757574")) {
            //splits the message into words after the prefix
            const args = message.content.slice(bot.prefix.length).split(/ +/);

            //the first word in the message following the prefix
            const command = args.shift().toLowerCase();

            //check if the command is in the list
            if (client.things.get('textcommands').get(command) != undefined) {
                //run the command
                client.things.get('textcommands').get(command).execute(message, args, bot);
            }
        }
    }
});

client.on('messageReactionAdd', (reaction, user) => {
    //special case automatically clears ✅, ❌, and ⌚ if they are from the bot and on the songMessage
    if ((reaction.emoji.name === "✅" || reaction.emoji.name === "❌" || reaction.emoji.name === "⌚")
        && bot.songMessage != null && bot.songMessage.id === reaction.message.id && user.id === bot.botID) {
        reaction.users.remove(user);
    }

    // if there is a utility message and this message is the utility message and the person who reacted is jasper
    if (bot.multiUtilityMessage != null && reaction.message.id === bot.multiUtilityMessage.id && (user.id === bot.jaspaID || user.id === "914641118308757574")) {
        //check that emoji is valid
        if (bot.utilityEmojis.includes(reaction.emoji.name)) {
            // call helper for emoji
            bot.helpers(reaction.emoji.name, { reaction: reaction, user: user });
            reaction.users.remove(user);
            return
        }
    }

    // if there is a vote message and this message is the vote message and the person who reacted is jasper
    if (bot.multiVoteMessage != null && reaction.message.id === bot.multiVoteMessage.id && (user.id === bot.jaspaID || user.id === "914641118308757574")) {
        //check for custom emojis
        if (reaction.emoji.createdAt != null) {
            bot.updateVoteMessage("Custom Emojis are not supported")
            console.log('Tried to create theme with custom emoji')
        }
        else {
            // call helper for mode
            bot.helpers(bot.multiMode, { emoji: reaction.emoji.name });
        }

        reaction.users.remove(user);
        return
    }

    // if there is a delete message and this message is the delete message and the person who reacted is jasper
    if (bot.deleteMessage != null && reaction.message.id === bot.deleteMessage.id && user.id === bot.jaspaID) {
        //check that emoji is valid
        if (bot.deleteEmojis.includes(reaction.emoji.name)) {
            // call helper for emoji
            bot.helpers(reaction.emoji.name, {});
            reaction.users.remove(user);
        }
        return
    }
});

const scopes = [
    'ugc-image-upload',
    'user-read-playback-state',
    'user-modify-playback-state',
    'user-read-currently-playing',
    'streaming',
    'app-remote-control',
    'user-read-email',
    'user-read-private',
    'playlist-read-collaborative',
    'playlist-modify-public',
    'playlist-read-private',
    'playlist-modify-private',
    'user-library-modify',
    'user-library-read',
    'user-top-read',
    'user-read-playback-position',
    'user-read-recently-played',
    'user-follow-read',
    'user-follow-modify'
];

app.get('/login', (req, res) => {
    res.redirect(bot.spotifyApi.createAuthorizeURL(scopes));
});

app.get('/callback', (req, res) => {
    const error = req.query.error;
    const code = req.query.code;
    const state = req.query.state;

    if (error) {
        console.error('Callback Error:', error);
        res.send(`Callback Error: ${error}`);
        return;
    }

    bot.spotifyApi
        .authorizationCodeGrant(code)
        .then(data => {
            const access_token = data.body['access_token'];
            const refresh_token = data.body['refresh_token'];
            const expires_in = data.body['expires_in'];

            bot.spotifyApi.setAccessToken(access_token);
            bot.spotifyApi.setRefreshToken(refresh_token);

            // console.log('access_token:', access_token);
            // console.log('refresh_token:', refresh_token);

            console.log(
                `Successfully retrieved access token. Expires in ${expires_in} s.`
            );

            const htmlResponse = `
                <html>
                <head>
                    <title>Redirecting...</title>
                    <style>
                        #timer {
                            font-size: 20px;
                            text-align: center;
                            margin-top: 100px;
                        }
                    </style>
                </head>
                <body>
                    <div id="timer">Successfully logged into Spotify! Closing page in <span id="countdown">5</span> seconds...</div>
                    <script>
                        const countdownElement = document.getElementById('countdown');
                        let countdown = 5; // Change this value to adjust the countdown duration

                        function updateCountdown() {
                            countdown--;
                            countdownElement.textContent = countdown;
                            
                            if (countdown === 0) {
                                window.close();
                            } else {
                                setTimeout(updateCountdown, 1000); // Update countdown every second
                            }
                        }

                        // Start the countdown
                        updateCountdown();
                    </script>
                </body>
                </html>
            `;

            res.send(htmlResponse);

            bot.loadSpot();

            setInterval(async () => {
                const data = await bot.spotifyApi.refreshAccessToken();
                const access_token = data.body['access_token'];

                console.log('The access token has been refreshed!');
                // console.log('access_token:', access_token);
                bot.spotifyApi.setAccessToken(access_token);
            }, expires_in / 2 * 1000);
        })
        .catch(error => {
            console.error('Error getting Tokens:', error);
            res.send(`Error getting Tokens: ${error}`);
        });
});

app.listen(8888, () =>
    console.log(
        'HTTP Server up. Now go to http://localhost:8888/login in your browser.'
    )
);
client.login(bot.tokenDiscord);