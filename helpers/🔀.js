module.exports = {
    name: '🔀',
    secret: false,
    description: "shuffles the songs in the current theme's playlist",
    execute(params, bot)
    {
        //shuffle songs list
        let shuffledList = []

        for (let i = bot.songlist.length - 1; i >= 0; i--)
        {
            //choose a random song to shuffle
            let randomIndex = Math.floor(Math.random() * bot.songlist.length)
            let song = bot.songlist[randomIndex]

            //remove the song from the unshuffled list
            bot.songlist.splice(randomIndex, 1)

            //add it to the shuffled list
            shuffledList.push(song)
        }

        //set the songlist to the shuffled list 
        bot.songlist = shuffledList

        //clear playlist
        bot.removeSongsFromPlaylist(bot.playlistID, bot.songlist)
        
        //add all songs to playlist
        .then(() => bot.addSongsToPlaylist(bot.playlistID, bot.songlist)) 

        //update ballot
        .then(() => bot.updateBallot(`Shuffle Complete`))

        console.log("shuffle complete")
    }
}  