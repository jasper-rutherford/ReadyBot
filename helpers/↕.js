module.exports = {
    name: '↕',
    secret: false,
    description: "orders the songs in the current theme's playlist by score, most to least",
    execute(params, bot)
    {
        //update the ballot
        bot.updateBallot(`Ordering`)

        // order songs list
        let orderedList = []

        for (let i = bot.songlist.length - 1; i >= 0; i--)
        {
            //find the song with the largest score
            let index = 0
            let bigSong = bot.songlist[0]
            for (let j = 0; j < bot.songlist.length; j++)
            {
                let otherSong = bot.songlist[j]
                if (otherSong.score > bigSong.score)
                {
                    index = j
                    bigSong = otherSong
                }
            }

            //remove the song from the unshuffled list
            bot.songlist.splice(index, 1)

            //add it to the shuffled list
            orderedList.push(bigSong)
        }

        console.log(orderedList[0])
        console.log(orderedList[1])
        console.log(orderedList[2])

        //set the songlist to the shuffled list 
        bot.songlist = orderedList

        //clear playlist
        bot.removeSongsFromPlaylist(bot.playlistID, bot.songlist)
        
        //add all songs to playlist
        .then(() => bot.addSongsToPlaylist(bot.playlistID, bot.nonNegativeScores(bot.songlist))) 

        //update ballot
        .then(() => bot.updateBallot(`Order Complete`))

        console.log("order complete")
    }
}  