module.exports = {
    name: 'sendballots',
    secret: false,
    description: "sends the multi voting ballots to the desired channel",
    execute(channel, bot)
    {
        //message 1: the utility message
        let message1Content = "Utility Message"
        channel.send(message1Content).then(sent =>
        {
            bot.multiUtilityMessage = sent
            sent.react('⏮')
            .then(() => sent.react('⏭'))
            .then(() => sent.react('🔀'))
            .then(() => sent.react('↕'))
            .then(() => sent.react('❔'))
        })

        //message 2: the voting message
        let message2Content = "Vote Message"
        channel.send(message2Content).then(sent =>
        {
            bot.multiVoteMessage = sent
            reactAll(bot.getThemojis(), sent)
        })
    },
    //reacts all emojis from the list of themes onto the provided message
    reactAll(emojis, message)
    {
        if (emojis.length == 0)
        {
            //done
            return
        }

        //pop one emoji from the list, create a new list with all remaining emojis
        let emoji = emojis[0]
        let remainingEmojis = []
        for (let i = 1; i < emojis.length; i++)
        {
            remainingEmojis.push(emojis[i])
        }

        //react the emoji to the message, then react the rest
        message.react(emoji).then(() => this.reactAll(remainingEmojis, message))
    }
}  