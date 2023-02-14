module.exports = {
    name: 'ORDER',
    secret: false,
    description: "orders the songs in the current theme's playlist by score, most to least",
    execute(params, bot)
    {
        //update the ballot
        bot.updateVoteMessage(`Ordering ${params.emoji}`)
        console.log(`Ordering ${params.emoji}`)

        // order songs list
        let orderedList = []

        for (let i = bot.multiSongs.length - 1; i >= 0; i--)
        {
            //find the song with the largest score
            let index = 0
            let bigSong = bot.multiSongs[0]
            for (let j = 0; j < bot.multiSongs.length; j++)
            {
                let otherSong = bot.multiSongs[j]
                if (otherSong.score > bigSong.score)
                {
                    index = j
                    bigSong = otherSong
                }
            }

            //remove the song from the unshuffled list
            bot.multiSongs.splice(index, 1)

            //add it to the shuffled list
            orderedList.push(bigSong)
        }

        //set the songlist to the shuffled list 
        bot.multiSongs = orderedList

        //clear playlist
        bot.removeSongsFromPlaylist(bot.themePlaylistIDFromEmoji(params.emoji), bot.multiSongs)
        
        //add all songs to playlist
        .then(() => bot.addSongsToPlaylist(bot.themePlaylistIDFromEmoji(params.emoji), bot.positiveScores(params.emoji, bot.multiSongs))) 

        //update ballot
        .then(() => bot.updateVoteMessage(`Finished Ordering ${params.emoji}`))

        console.log(`Finished Ordering ${params.emoji}`)
    }
}  