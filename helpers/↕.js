module.exports = {
    name: '↕',
    secret: false,
    description: "switches to order mode",
    execute(params, bot)
    {
        if (bot.multiMode === "ORDER")
        {
            bot.multiMode = "REVERSE"
        }
        else if (bot.multiMode === "REVERSE")
        {
            bot.multiMode = "ORDER"
        }
        else 
        {
            bot.multiMode = "ORDER"
        }
        
        bot.updateUtilityMessage()
    }
}  