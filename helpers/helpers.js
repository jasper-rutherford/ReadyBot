const relayMsgToJaspa = (bot, message) => {
    var jaspaChannel = bot.client.channels.cache.get(bot.jaspaDM);

    if (message.channel.type === 'dm') {
        if (jaspaChannel === undefined) {
            if (message.channel != bot.recentProxyChannel) {
                console.log('DIRECT MESSAGE [' + message.channel.id + '] \n' + message.author.username + ': ' + message.content);
                bot.recentProxyChannel = message.channel;
            }
            else {
                console.log(message.author.username + ': ' + message.content);
            }
        }
        else {
            console.log(bot.recentProxyChannel);
            console.log(message.channel);
            if (message.channel != bot.recentProxyChannel) {
                jaspaChannel.send('DIRECT MESSAGE [' + message.channel.id + '] \n' + message.author.username + ': ' + message.content);
                bot.recentProxyChannel = message.channel;
            }
            else {
                jaspaChannel.send(message.author.username + ': ' + message.content);
            }
        }
    }
    else if (message.channel.type === 'text') {
        if (jaspaChannel === undefined) {
            if (message.channel != bot.recentProxyChannel) {
                console.log(message.channel.name.toUpperCase() + ' [' + message.channel.id + '] \n' + message.member.displayName + ': ' + message.content);
                bot.recentProxyChannel = message.channel;
            }
            else {
                console.log(message.member.displayName + ': ' + message.content);
            }
        }
        else {
            if (message.channel != bot.recentProxyChannel) {
                jaspaChannel.send(message.channel.name.toUpperCase() + ' [' + message.channel.id + '] \n' + message.member.displayName + ': ' + message.content);
                bot.recentProxyChannel = message.channel;
            }
            else {
                jaspaChannel.send(message.member.displayName + ': ' + message.content);
            }
        }
    }
}

const sendBallots = (bot, channel) => {
    //message 0: a line separating the above messages from these
    channel.send("-----------------------------------------------------")

    //message 1: the utility message
    let intervalMessage = ` | ${bot.queryInterval == "" ? "All Time" : "Past " + bot.queryInterval}`
    let message1Content = `[Current Mode: ${bot.getCurrentUtilityMode()}${intervalMessage}]`
    channel.send(message1Content).then(sent => {
        bot.multiUtilityMessage = sent
        bot.reactAll(bot.utilityEmojis, sent)
    })

    //message 2: the voting message - initializes to a bunch of dancers :)
    let dancers = ["💃", "🕺"]
    let message2Content = ``
    for (let i = 0; i < 8; i++) {
        message2Content += `${dancers[getRandomInt(2)]}  `
    }
    channel.send(message2Content).then(sent => {
        bot.multiVoteMessage = sent
        bot.reactAll(bot.getThemojis(), sent)
    })
}

const getRandomInt = (max) => {
    return Math.floor(Math.random() * max);
}

module.exports = {
    relayMsgToJaspa,
    sendBallots
}