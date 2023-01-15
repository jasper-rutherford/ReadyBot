module.exports = {
    name: '⏬',
    secret: false,
    description: "sets the current song's score to -1 and skips it",
    execute(params, bot)
    {
        let oldSong
        let songScore

        //get current song uri
        // check if a song is playing
        bot.spotifyApi.getMyCurrentPlaybackState()
        .then(function (data)
        {
            console.log("getting current state")
            // if a song is playling
            if (data.body && data.body.is_playing)
            {
                // get current song
                return bot.spotifyApi.getMyCurrentPlayingTrack()
            }
            else
            {
                return new Promise((resolve, reject) => 
                {
                    reject("No song playing")
                })
            }
        })
        .then(function (data)
        {
            console.log("ensuring uri is in barrel")

            //current song uri
            let uri = data.body.item.uri;
            oldSong = data.body.item.name;

            //ensure the uri is in the barrel
            return bot.ensureUriIsInBarrel(uri)
        })
        .then((uri) =>
        {
            console.log("getting song by uri")

            //find song obj in list
            let song = bot.getSongByUri(uri, bot.songlist)

            //save the score (its a surprise tool that will help us later)
            songScore = song.score

            //decrement score
            bot.changeSongScore(song, -(song.score + 1))

            //remove songs with low scores
            console.log(`checking if score is too low [${song.name}](${song.score})`)

            //if score is too low
            if (song.score < 0)
            {
                console.log(`Score too low, removing ${song.name} from ${bot.currentTheme}`)
                
                //remove the song from the theme playlist
                bot.removeUriFromPlaylist(song.uri, bot.playlistID)
            }

            //skip the song
            return bot.spotifyApi.skipToNext()
        })

        //get the current song
        .then(() => bot.getCurrentSong())

        //update stuff with new song
        .then((song) => 
        {
            //update the ballot to reflect new song
            bot.updateBallot(`[${oldSong}] was slammed from [${songScore}]\nNow playing [${song.name}]`)

            //update logs
            console.log(`[${oldSong}] was slammed from [${songScore}]\nNow playing [${song.name}]`)
        }) 
        .catch((error) =>
        {
            if (error === "No song playing")
            {
                //this is fine
                console.log("No song is currently playing.")
            }
        })
    }
}  