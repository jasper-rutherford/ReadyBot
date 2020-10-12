module.exports = {
    name: 'proxychat',
    secret: true,
    description: "",
    execute(message, args, bot)
    {
        command = args.shift();

        if (command != undefined)
        {
            command = command.toLowerCase();
        }

        //if proxychat is followed by nothing, just toggle it
        if (command === undefined)
        {
            bot.proxyChat = !bot.proxyChat;
            if (bot.proxyChat)
            {
                message.channel.send('Proxy Chat turned on');
            }
            else
            {
                message.channel.send('Proxy Chat turned off');
            }
        }
        //otherwise try to set the secondary command to be the channel to send to
        else
        {
            if (bot.client.channels.cache.get(command) != null)
            {
                bot.proxyChannel = bot.client.channels.cache.get(command);

                if (bot.proxyChannel.type === 'text')
                {
                    message.channel.send('ProxyChat set to ' + bot.proxyChannel.name);
                }
                else if (bot.proxyChannel.type === 'dm')
                {
                    message.channel.send('ProxyChat set to that person');
                }
            }
            else
            {
                message.channel.send('Unable to find that channel.');
            }
        }
    }
}  