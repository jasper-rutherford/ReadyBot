module.exports = {
    name: 'notready',
    alt: 'unready',
    secret: false,
    description: "Declares yourself not ready",
    execute(message, args, bot)
    {
        bot.RAUL.delete(message.author.id);
	    bot.helpers('saveRAUL', 0);
	
        //called through readyat
        if (args === 'auto')
        {
            if (message.member.roles.cache.has(bot.readyRoleID))
            {
                message.member.roles.remove(bot.readyRole);

                bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) - 1 });
            }
        }
        //called through readyuntil
        else if (args === 'until')
        {
            var member = bot.guild.members.cache.get(message);
            if (member.roles.cache.has(bot.readyRoleID))
            {
                member.roles.remove(bot.readyRole);

                bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) - 1 });
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
                    bot.helpers('saveRAL', 0);
                }

                message.react('👎');

                var param =
                {
                    message: message,
                    num: bot.helpers('numReady', 0) - 1
                }
                bot.helpers('react', param);

                message.react('✅');


                bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) - 1 });
            }
            else 
            {
                message.channel.send('We get it, you aren\'t ready');

                bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) })
            }
        }
    }
}  