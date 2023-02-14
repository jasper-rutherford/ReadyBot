module.exports = {
    name: '↕',
    secret: false,
    description: "switches to order mode",
    execute(params, bot)
    {
        bot.multiMode = "ORDER"
        bot.updateUtilityMessage("Current Mode: ORDER")
    }
}  