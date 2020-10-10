module.exports = {
    id: '130880023069589505',
    description: "Jaspa Stuff",
    execute(message, bot)
    {
        var specialPref = '\\';

        //run special commands for jaspa
        if (message.content.startsWith(specialPref))
        {
            const args = message.content.slice(specialPref.length).split(/ +/);
            var command = args.shift().toLowerCase();

            //check if the command is in the list
            if (bot.client.things.get('dmcommands').get(command) != undefined)
            {
                bot.client.things.get('dmcommands').get(command).execute(message, args, bot);
            }
        }
        //react to not commands
        else
        {
            //send what i say through the bot (proxychat)
            if (bot.proxyChat && message.content != null)
            {
                bot.proxyChannel.send(message.content);
            }
            else
            {
                message.channel.send('❤️');
            }
        }
    }
}  