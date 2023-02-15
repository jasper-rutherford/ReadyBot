module.exports = {
    name: '⬆',
    secret: false,
    description: "switches mode to UPVOTE",
    execute(params, bot)
    {
        bot.multiMode = "UPVOTE"
        bot.updateUtilityMessage()
    }
}  