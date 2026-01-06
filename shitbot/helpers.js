// this is broken because i switched over to shitbot which is a new bot and has a new jasper dm channel id
// in theory i think like. in future the system would be better if there was one coded super admin in the .env
// and then that person could do /admin person
// and then whenever an admin messages the bot for the first time, the bot saves the channel id to the db and says like
// "Admin Channel ID saved to DB"
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

module.exports = {
    relayMsgToJaspa,
}