module.exports = {
    name: '❌',
    secret: false,
    description: "cancels deletion of a theme",
    execute(params, bot)
    {
        //update VoteMessage to reflect cancellation
        bot.updateUtilityMessage(`Did not delete ${bot.deletingEmoji}`)

        //save changes
        bot.saveToFile()

        //delete warning message
        bot.deleteMessage.delete()
        bot.deleteMessage = null
        bot.deletingEmoji = null
    }
}  