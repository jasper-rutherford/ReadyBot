module.exports = {
    name: 'REVERSE',
    secret: false,
    description: "orders the songs in the current theme's playlist by score, most to least",
    execute(params, bot)
    {
        //check emoji is valid
        if (!bot.getThemojis().includes(params.emoji))
        {
            console.log(`Tried to order a theme that does not exist (${params.emoji})`);
            bot.updateUtilityMessage(`${params.emoji} does not exist.`)
            return
        }

        //update the ballot
        bot.updateUtilityMessage(`Ordering ${params.emoji}`)
        console.log(`Ordering ${params.emoji}`)
        
        // clear playlist
        bot.clearPlaylist(bot.themePlaylistIDFromEmoji(params.emoji))

        // get the relevant uris
        .then(() => bot.orderedUris(params.emoji))
        
        // add all songs to playlist
        .then((uris) => bot.addSongsToPlaylist(bot.themePlaylistIDFromEmoji(params.emoji), uris.reverse())) 

        // update ballot
        .then(() => bot.updateUtilityMessage(`Finished Ordering ${params.emoji}`))

        console.log(`Finished Ordering ${params.emoji}`)
    }
}  