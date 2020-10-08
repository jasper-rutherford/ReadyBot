module.exports = {
    name: 'readyat',
    alt: 'readysoon',
    param: 'time',
    secret: false,
    description: "Declares yourself as ready, but in the future",
    execute(message, args, bot)
    {
        command = args.shift();

        if (command === undefined)
        {
            message.channel.send('Try entering a time (HH:MM).');
        }
        else if (command === 'cancel')
        {
            if (bot.readySoon.get(message.member.id) != undefined)
            {
                let minutes = bot.readySoon.get(message.member.id)[2]
                let hours = bot.readySoon.get(message.member.id)[1]

                if (minutes < 10)
                {
                    message.channel.send(message.member.displayName + ' will no longer be ready at ' + hours + ':0' + minutes);
                }
                else
                {
                    message.channel.send(message.member.displayName + ' will no longer be ready at ' + hours + ':' + minutes);
                }

                bot.readySoon.delete(message.member.id);
            }
        }
        //try to parse it
        else 
        {
            if (command.indexOf(':') === -1)
            {
                if (command === 'list')
                {
                    bot.client.things.get('textcommands').get('readysoonlist').execute(message, args, bot);
                }
                else
                {
                    message.channel.send('Try entering a time (HH:MM).');
                }
            }
            else 
            {
                digits = command.replace(/\D/g, '');

                hourGoal = 0;
                minuteGoal = 0;

                let ogHours = 0;
                let ogMinutes = 0;

                if (digits <= 1259 && digits > 99)
                {
                    minuteGoal = digits % 100;
                    if (minuteGoal > 59)
                    {
                        message.channel.send('nice one');
                    }
                    else
                    {
                        bot.client.things.get('textcommands').get('notready').execute(message, 'auto', bot);


                        hourGoal = (digits - minuteGoal) / 100;

                        if (message.member.id === bot.benID)
                        {
                            hourGoal--;
                        }

                        ogHours = hourGoal;
                        ogMinutes = minuteGoal;

                        var date = new Date();
                        var currentHours = date.getHours();
                        if (currentHours > 11)
                        {
                            currentHours -= 12;
                        }
                        var currentMinutes = date.getMinutes();


                        if (currentHours > hourGoal || currentHours === hourGoal && currentMinutes > minuteGoal)
                        {
                            hourGoal += 12;
                        }
                        if (currentMinutes > minuteGoal)
                        {
                            minuteGoal += 60;
                            hourGoal--;
                        }

                        hours = hourGoal - currentHours;
                        minutes = minuteGoal - currentMinutes;

                        let totmillis = ((minutes + hours * 60) * 60 - date.getSeconds()) * 1000;

                        bot.readySoon.set(message.member.id, [message.member.id, ogHours, ogMinutes]);
                        // bot.numReadySoon++;
                        message.react('✅');

                        if (ogMinutes < 10)
                        {
                            message.channel.send('I\'ve got you marked down for ' + ogHours + ':0' + ogMinutes);
                        }
                        else
                        {
                            message.channel.send('I\'ve got you marked down for ' + ogHours + ':' + ogMinutes);
                        }


                        setTimeout(function ()
                        {
                            currentHours = new Date().getHours();
                            if (currentHours > 12)
                            {
                                currentHours -= 12;
                            }
                            currentMinutes = new Date().getMinutes();

                            let hoursDiff = bot.readySoon.get(message.member.id)[1] - currentHours;
                            let minutesDiff = bot.readySoon.get(message.member.id)[2] - currentMinutes;

                            if (bot.readySoon.get(message.member.id) != undefined && Math.abs(hoursDiff) === 0 && Math.abs(minutesDiff) === 0)
                            {
                                message.channel.send('Are ya ready yet, ' + `<@${message.member.id}>` + '?');
                                bot.readySoon.delete(message.member.id);
                            }
                        }, totmillis);
                    }
                }
                else 
                {
                    message.channel.send('might wanna rethink that one chief');
                }
            }
        }
    }
}  