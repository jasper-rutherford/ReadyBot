module.exports = {
    name: '🆕',
    secret: false,
    description: "switches to CREATE mode",
    execute(params, bot)
    {
        bot.multiMode = "CREATE"
        bot.updateUtilityMessage()
    }
}  