module.exports = {
    name: 'sendballots',
    secret: false,
    description: "sends the multi voting ballots to the desired channel",
    execute(channel, bot)
    {
        //message 0: a line separating the above messages from these
        channel.send("-----------------------------------------------------")

        //message 1: the utility message
        let intervalMessage = ` | ${bot.queryInterval == "" ? "All Time" : "Past Week"}`
        let message1Content = `[Current Mode: ${bot.multiMode}${["ORDER", "REVERSE", "SHUFFLE"].includes(bot.multiMode) ? intervalMessage : ""}]`
        channel.send(message1Content).then(sent =>
        {
            bot.multiUtilityMessage = sent
            bot.reactAll(bot.utilityEmojis, sent)
        })

        //message 2: the voting message - initializes to a bunch of dancers :)
        let dancers = ["💃", "🕺"]
        let message2Content = ``
        for (let i = 0; i < 8; i++)
        {
            message2Content += `${dancers[this.getRandomInt(2)]}  `
        }
        channel.send(message2Content).then(sent =>
        {
            bot.multiVoteMessage = sent
            bot.reactAll(bot.getThemojis(), sent)
        })
    },
    getRandomInt(max) 
    {
        return Math.floor(Math.random() * max);
    }
}  