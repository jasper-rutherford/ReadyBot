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
            let digits = command.replace(/\D/g, '');

            let atMinutes = digits % 100;
            let atHours = (digits - atMinutes) / 100;
            atHours %= 12;

            let date = new Date();

            let currentMinutes = date.getMinutes();
            let currentHours = date.getHours();

            let atPm = currentHours > 12;

            if (atHours < currentHours)
            {
                atHours += 12;
                atPm = !atPm;
            }
            else if (atHours >= currentHours && atMinutes < currentMinutes)
            {
                atHours += 12;
                atPm = !atPm;
            }

            atMillis = (atHours * 60 + atMinutes) * 60 * 1000;
            currentMillis = ((currentHours * 60 + currentMinutes) * 60 + date.getSeconds()) * 1000;

            let totMillis = atMillis - currentMillis;


            atMinutes = (atMillis / (1000 * 60)) % 60;
            atHours = ((atMillis / (1000 * 60)) - atMinutes) / 60;

            bot.readySoon.set(message.member.id, [message.member.id, atHours, atMinutes]);

            message.react('✅');

            let out = 'I\'ve got you marked down for ';

            if (atHours > 12)
            {
                atHours -= 12;
            }

            out += atHours + ':';

            if (atMinutes < 10)
            {
                out += '0';
            }

            out += atMinutes;

            if (atPm)
            {
                out += 'pm';
            }
            else
            {
                out += 'am';
            }

            message.channel.send(out);

            setTimeout(function ()
            {
                let atMinutes = bot.readySoon.get(message.member.id)[2];
                let atHours = bot.readySoon.get(message.member.id)[1];

                let date = new Date();

                let currentMinutes = date.getMinutes();
                let currentHours = date.getHours();

                if (bot.readySoon.get(message.member.id) != undefined && atMinutes === currentMinutes && atHours === currentHours)
                {
                    message.channel.send('Are ya ready yet, ' + `<@${message.member.id}>` + '?');
                    bot.readySoon.delete(message.member.id);
                }
            }, totMillis);
        }
    }
}