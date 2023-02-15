module.exports = {
    name: '🗑',
    secret: false,
    description: "switches to DELETE mode",
    execute(params, bot)
    {
        bot.multiMode = "DELETE"
        bot.updateUtilityMessage()
    }
}  