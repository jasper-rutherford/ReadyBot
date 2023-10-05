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
        
        // clear playlist
        bot.clearPlaylist(bot.themePlaylistIDFromEmoji(params.emoji))

        // get the relevant uris
        .then(() => bot.orderedUris(params.emoji))
        
        // add all songs to playlist
        .then((uris) => {
            let shuffledUris = []

            for (let i = uris.length - 1; i >= 0; i--)
            {
                //choose a random song to shuffle
                let randomIndex = Math.floor(Math.random() * uris.length)
                let uri = uris[randomIndex]

                //remove the song from the unshuffled list
                uris.splice(randomIndex, 1)

                //add it to the shuffled list
                shuffledUris.push(uri)
            }

            return bot.addSongsToPlaylist(bot.themePlaylistIDFromEmoji(params.emoji), shuffledUris)
        }) 

        //update ballot
        .then(() => bot.updateUtilityMessage(`Finished Shuffling ${params.emoji}`))

        console.log(`Finished Shuffling ${params.emoji}`)
    }
}  