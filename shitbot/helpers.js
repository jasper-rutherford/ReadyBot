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
    // else if (message.channel.type === 'text') {
    //     if (jaspaChannel === undefined) {
    //         if (message.channel != bot.recentProxyChannel) {
    //             console.log(message.channel.name.toUpperCase() + ' [' + message.channel.id + '] \n' + message.member.displayName + ': ' + message.content);
    //             bot.recentProxyChannel = message.channel;
    //         }
    //         else {
    //             console.log(message.member.displayName + ': ' + message.content);
    //         }
    //     }
    //     else {
    //         if (message.channel != bot.recentProxyChannel) {
    //             jaspaChannel.send(message.channel.name.toUpperCase() + ' [' + message.channel.id + '] \n' + message.member.displayName + ': ' + message.content);
    //             bot.recentProxyChannel = message.channel;
    //         }
    //         else {
    //             jaspaChannel.send(message.member.displayName + ': ' + message.content);
    //         }
    //     }
    // }
}

const getRandomInt = (max) => {
    return Math.floor(Math.random() * max);
}

module.exports = {
    relayMsgToJaspa,
    getRandomInt
}