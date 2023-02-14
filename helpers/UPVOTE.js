module.exports = {
    name: 'UPVOTE',
    secret: false,
    description: "increments the current song's score by 1",
    execute(params, bot)
    {
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
            //current song uri
            let uri = data.body.item.uri;

            //ensure that the song exists in the system
            console.log("this is probably wrong")
            bot.ensureMultiSongExists(uri, data.body.item.name)

            //get song by uri
            let song = bot.getSongByUri(uri, bot.multiSongs)

            //increment score
            bot.changeSongScore(song, params.emoji, 1)

            //update the vote message to reflect latest score change
            bot.updateBallot(`[${song.name}] has a score of [${song.score}] for ${params.emoji}`)
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