module.exports = {
    name: 'notready',
    alt: 'unready',
    secret: false,
    description: "Declares yourself not ready",
    execute(message, args, bot)
    {
        if (message.member.roles.cache.has(bot.readyRoleID))
        {
            message.member.roles.remove(bot.readyRole);

            if (args != 'auto')
            {
                message.react('👎');

                var param =
                {
                    message: message,
                    num: bot.helper('numReady', 0) - 1
                }
                bot.helper('react', param);

                message.react('✅');
            }

            bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) - 1 });
        }
        else if (args != 'auto')
        {
            message.channel.send('We get it, you aren\'t ready');

            bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) })
        }
    }
}  