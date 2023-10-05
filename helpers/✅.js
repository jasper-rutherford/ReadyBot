module.exports = {
    name: '✅',
    secret: false,
    description: "confirms deletion of a theme",
    execute(params, bot)
    {
        //removes the theme from the list of themes, 
        for (let themeIndex in bot.multiThemes)
        {
            let theme = bot.multiThemes[themeIndex]
            if (theme.emoji == bot.deletingEmoji)
            {
                bot.multiThemes.splice(themeIndex, 1)
            }
        }

        //remove the emoji from the VoteMessage
        bot.multiVoteMessage.reactions.cache.get(bot.deletingEmoji).remove()

        //update VoteMessage to reflect deletion
        bot.updateUtilityMessage(`Deleted ${bot.deletingEmoji}`)

        //save changes
        bot.saveToFile()

        //delete warning message
        console.log("deleting message")
        bot.deleteMessage.edit("-")
        // bot.deleteMessage.delete()
        bot.deleteMessage = null
        bot.deletingEmoji = null
    }
}  