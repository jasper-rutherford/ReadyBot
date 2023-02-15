module.exports = {
    name: '⬇',
    secret: false,
    description: "sets the mode to DOWNVOTE",
    execute(params, bot)
    {
        bot.multiMode = "DOWNVOTE"
        bot.updateUtilityMessage()
    }
}  