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
                bot.react(message, bot.numReady() - 1);
                message.react('✅');
            }
            bot.updateNumReady(bot.numReady() - 1);
        }
        else if (args != 'auto')
        {
            message.channel.send('We get it, you aren\'t ready');
            bot.updateNumReady(bot.numReady());
        }
    }    
}  