module.exports = {
    name: '⬆',
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
            console.log("ensuring uri is in barrel")

            //current song uri
            let uri = data.body.item.uri;

            //ensure the uri is in the barrel
            return bot.ensureUriIsInBarrel(uri)
        })
        .then((uri) =>
        {
            console.log("getting song by uri")

            //find song obj in list
            let song = bot.getSongByUri(uri, bot.songlist)

            //decrement score
            bot.changeSongScore(song, 1)

            console.log("updating ballot")

            //update the ballot to reflect latest score change
            bot.updateBallot(`[${song.name}] has a score of [${song.score}]`)
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