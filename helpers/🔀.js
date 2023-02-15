module.exports = {
    name: '🔀',
    secret: false,
    description: "switches into shuffle mode",
    execute(params, bot)
    {
        bot.multiMode = "SHUFFLE"
        bot.updateUtilityMessage()
    }
}  