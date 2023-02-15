module.exports = {
    name: 'DELETE',
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
        bot.deletingEmoji = params.emoji
        bot.multiUtilityMessage.channel.send(`Are you sure you want to delete ${params.emoji}?`)
        .then(sent =>
        {
            bot.deleteMessage = sent
            bot.reactAll(bot.deleteEmojis, sent)
        })
    }
}  