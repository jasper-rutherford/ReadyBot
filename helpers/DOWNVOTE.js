module.exports = {
    name: 'DOWNVOTE',
    secret: false,
    description: "decrements the current song's score by 1",
    execute(params, bot)
    {
        //check emoji is valid
        if (!bot.getThemojis().includes(params.emoji))
        {
            console.log(`Tried to downvote a theme that does not exist (${params.emoji})`);
            bot.updateUtilityMessage(`${params.emoji} does not exist.`)
            return
        }

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
            bot.ensureMultiSongExists(uri, data.body.item.name)

            //get song by uri
            let song = bot.getSongByUri(uri, bot.multiSongs)

            //decrement score
            bot.changeSongScore(song, params.emoji, -1)

            //update the vote message to reflect latest score change
            bot.updateVoteMessage(`[${song.name}] has a score of [|| ${song.scores.get(params.emoji)} ||] for ${params.emoji}`)
            console.log(`[${song.name}] has a score of [${song.scores.get(params.emoji)}] for ${params.emoji}`)
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