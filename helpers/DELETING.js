module.exports = {
    name: 'DELETING',
    secret: false,
    description: "warns the user about potential deletion of a theme",
    execute(params, bot)
    {
        //check emoji is valid
        if (!bot.getThemojis().includes(params.emoji))
        {
            console.log(`Tried to delete a theme that does not exist (${params.emoji})`);
            bot.updateUtilityMessage(`${params.emoji} does not exist.`)
            return
        }

        //send warning to user
        bot.deletingEmoji = emoji
        bot.spotifyChannel.send(`Are you sure you want to delete ${emoji}?`)
        .then(sent =>
        {
            bot.deleteMessage = sent
            this.reactAll(bot.deleteEmojis, sent)
        })
    }
}  