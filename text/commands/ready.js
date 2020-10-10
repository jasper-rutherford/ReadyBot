module.exports = {
    name: 'ready',
    secret: false,
    description: "Declares yourself ready",
    execute(message, args, bot)
    {
        command = args.shift();

        if (command === 'list')
        {
            bot.client.things.get('textcommands').get('readylist').execute(message, args, bot);
        }
        else
        {
            if (message.member.roles.cache.has(bot.readyRoleID))
            {
                message.channel.send('We get it, you\'re ready');
                bot.updateNumReady();
            }
            else
            {
                message.member.roles.add(bot.readyRole);
                bot.updateNumReady();

                if (bot.readySoon.get(message.member.id) != undefined)
                {
                    bot.readySoon.delete(message.member.id);
                }
                
                message.react('👍');
                bot.react(message, bot.numReady() + 1);
                message.react('✅');
            }
        }
    }
}  