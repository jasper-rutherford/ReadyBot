module.exports = {
    name: '📅',
    secret: false,
    description: "toggles whether or not to use the query interval or to go by all time",
    execute(params, bot)
    {
        bot.queryInterval = bot.queryInterval == "" ? bot.baseInterval : ""

        bot.updateUtilityMessage()
    }
}  