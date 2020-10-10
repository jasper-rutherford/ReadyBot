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
            bot.updateNumReady();

            if (args != 'auto')
            {
                message.react('👎');
                bot.react(message, bot.numReady() - 1);
                message.react('✅');
            }
        }
        else if (args != 'auto')
        {
            message.channel.send('We get it, you aren\'t ready');
            bot.updateNumReady();
        }
    }    
}  