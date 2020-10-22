module.exports = {
    name: 'ready',
    secret: false,
    description: "Declares yourself ready",
    execute(message, args, bot)
    {
        var command;
        //This section written by Josiah Vanevenhoven to implement support for the readyau command
        //---------------------------------------------------------------------------------------/
        rununtil = false;
        RAUH = '';
        RAUM = '';

        if (args != 'auto')
        {

            bot.RAUL.forEach(element => {
                if (element.id == message.author.id)
                {
                    rununtil = true;
                    RAUH = element.hour2;
                    RAUM = element.minute2;
                    if (RAUM < 10)
                    {
                        RAUM = '0'+RAUM;
                    }
                }
            });
        }

        if (rununtil)
        {
            //call readyuntil and clear user from the readyatuntil list if they are on it
            bot.client.things.get('textcommands').get('readyuntil').execute(message, [RAUH+":"+RAUM], bot);
            bot.helpers('saveRAUL', 0);
        }
        //---------------------------------------------------------------------------------------/
        else if (!rununtil)
        {
            if (args != 'auto')
                command = args.shift();

            if (command === 'list')
            {
                bot.client.things.get('textcommands').get('readylist').execute(message, args, bot);
            }
            else
            {
                //called through readyuntil
                if (args === 'auto')
                {
                    if (!message.member.roles.cache.has(bot.readyRoleID))
                    {
                        message.member.roles.add(bot.readyRole);

                        bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) + 1 });
                    }
                }
                //called directly
                else
                {
                    if (!message.member.roles.cache.has(bot.readyRoleID))
                    {
                        message.member.roles.add(bot.readyRole);

                        //if they said they are readyat, erase that (because they clearly are ready now)
                        var sooner = bot.sooners.get(message.member.id)
                        if (sooner != undefined && sooner.type === 'at')
                        {
                            bot.sooners.delete(sooner.id);
                            bot.helpers('saveRAL', 0);
                        }

                        message.react('👍');

                        var param =
                        {
                            message: message,
                            num: bot.helpers('numReady', 0) + 1
                        }
                        bot.helpers('react', param);

                        message.react('✅');

                        bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) + 1 });
                    }
                    else
                    {
                        message.channel.send('We get it, you\'re ready');
                        bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) });
                    }
                }
            }
        }
    }
}  