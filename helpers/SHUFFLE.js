module.exports = {
    name: 'SHUFFLE',
    secret: false,
    description: "shuffles the songs in the current theme's playlist",
    execute(params, bot)
    {
        //check emoji is valid
        if (!bot.getThemojis().includes(params.emoji))
        {
            console.log(`Tried to shuffle a theme that does not exist (${params.emoji})`);
            bot.updateUtilityMessage(`${params.emoji} does not exist.`)
            return
        }

        //update the vote message
        bot.updateUtilityMessage(`Shuffling ${params.emoji}`)
        console.log(`Shuffling ${params.emoji}`)
        
        //shuffle songs list
        let shuffledList = []

        for (let i = bot.multiSongs.length - 1; i >= 0; i--)
        {
            //choose a random song to shuffle
            let randomIndex = Math.floor(Math.random() * bot.multiSongs.length)
            let song = bot.multiSongs[randomIndex]

            //remove the song from the unshuffled list
            bot.multiSongs.splice(randomIndex, 1)

            //add it to the shuffled list
            shuffledList.push(song)
        }

        //set the songlist to the shuffled list 
        bot.multiSongs = shuffledList

        //clear playlist
        bot.removeSongsFromPlaylist(bot.themePlaylistIDFromEmoji(params.emoji), bot.multiSongs)
        
        //add all songs to playlist
        .then(() => bot.addSongsToPlaylist(bot.themePlaylistIDFromEmoji(params.emoji), bot.positiveScores(params.emoji, bot.multiSongs))) 

        //update ballot
        .then(() => bot.updateUtilityMessage(`Finished Shuffling ${params.emoji}`))

        console.log(`Finished Shuffling ${params.emoji}`)
    }
}  