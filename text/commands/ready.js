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
                bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) });
            }
            else
            {
                message.member.roles.add(bot.readyRole);

                if (bot.sooners.get(message.member.id) != undefined)
                {
                    bot.sooners.delete(message.member.id);
                }

                message.react('👍');

                // console.log(bot.helper('numReady', 0));

                var param =
                {
                    message: message,
                    num: bot.helper('numReady', 0) + 1
                }

                // console.log(param.num);

                bot.helper('react', param);

                message.react('✅');

                bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) + 1 });
            }
        }
    }
}  