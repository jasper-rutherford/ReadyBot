module.exports = {
    name: 'notready',
    alt: 'unready',
    secret: false,
    description: "Declares yourself not ready",
    execute(message, args, bot)
    {
        //called through readyat
        if (args === 'auto')
        {
            if (message.member.roles.cache.has(bot.readyRoleID))
            {
                message.member.roles.remove(bot.readyRole);

                bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) - 1 });
            }
        }
        //called through readyuntil
        else if (args === 'until')
        {
            var member = bot.guild.members.cache.get(message);
            if (member.roles.cache.has(bot.readyRoleID))
            {
                member.roles.remove(bot.readyRole);

                bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) - 1 });
            }
        }
        //called directly
        else
        {
            if (message.member.roles.cache.has(bot.readyRoleID))
            {
                message.member.roles.remove(bot.readyRole);

                //if they said they are readyuntil, erase that (because they clearly are not ready now)
                var sooner = bot.sooners.get(message.member.id)
                if (sooner != undefined && sooner.type === 'until')
                {
                    bot.sooners.delete(sooner.id);
                    bot.helper('saveRAL', 0);
                }

                message.react('👎');

                var param =
                {
                    message: message,
                    num: bot.helper('numReady', 0) - 1
                }
                bot.helper('react', param);

                message.react('✅');


                bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) - 1 });
            }
            else 
            {
                message.channel.send('We get it, you aren\'t ready');

                bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) })
            }
        }
    }
}  