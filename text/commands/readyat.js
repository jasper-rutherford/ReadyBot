const { Collection } = require("discord.js");
const { errorMonitor } = require("stream");

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

                //save the list of people who are ready soon to a file
                this.savetoFile(bot);
            }
        }
        //try to parse it
        else 
        {
            let digits = command.replace(/\D/g, '');

            let atMinutes = digits % 100;
            let atHours = (digits - atMinutes) / 100;

            let date = new Date();

            let currentMinutes = date.getMinutes();
            let currentHours = date.getHours();

            //------------------------------------------------------------------ Josiah wrote most of the stuff between these lines
            command = args.shift();

            // convert excess minutes to hours instead

            while (atMinutes >= 60)
            {
                atMinutes -= 60;
                atHours += 1;
            }

            if (command === 'am') //next am occurance
            {
                if (atHours > 12)
                    atHours %= 12;
            }
            else if (command === 'pm') //next pm occurance
            {
                if (atHours > 12)
                    atHours %= 12;
                atHours += 12
            }
            else //military 
            {
                if (atHours > 24)
                    atHours %= 24;
            }

            atMillis = (atHours * 60 + atMinutes) * 60 * 1000;
            currentMillis = ((currentHours * 60 + currentMinutes) * 60 + date.getSeconds()) * 1000;

            let totMillis = atMillis - currentMillis;

            //if the time has already passed today assume that the user wants to ready at that time on the next day

            if (totMillis < 0)
                totMillis += (24 * 60 * 60 * 1000);


            //--------------------------------------------------------------------


            bot.readySoon.set(message.member.id, [message.member.id, atHours, atMinutes]);

            //save the list of people who are ready soon to a file
            this.savetoFile(bot);

            message.react('✅');

            let out = 'I\'ve got you marked down for ';

            if ((command === 'am' || command === 'pm') && atHours > 12)
            {
                atHours -= 12;
            }

            out += atHours + ':';

            if (atMinutes < 10)
            {
                out += '0';
            }

            out += atMinutes;

            if (command === 'am')
            {
                out += 'am';
            }
            else if (command === 'pm')
            {
                out += 'pm';
            }
            else
            {
                out += ' Military Time'
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

                    //save the list of people who are ready soon to a file
                    this.savetoFile(bot);
                }
            }, totMillis);
        }
    },

    savetoFile: function (bot)
    {
        const FileSystem = require("fs");

        let wrapper =
        {
            readyAtList: []
        }

        //converts the collection of readyat times to an array of readyat times
        bot.readySoon.forEach(thing =>
        {
            wrapper.readyAtList.push(thing);
        });

        let fileName = 'readyAtList.json';
        if (bot.testbuild)
        {
            fileName = 'testReadyAtList.json';
        }

        //saves the array to a file
        FileSystem.writeFile(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    }
}