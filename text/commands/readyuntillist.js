module.exports = {
    name: 'readyuntillist',
    secret: false,
    description: "Lists the people who will ready for a while.",
    execute(message, args, bot)
    {
        var num = 0;

        bot.sooners.forEach(sooner =>
        {
            if (sooner.type === 'until')
            {
                num++;
            }
        });

        if (num === 0)
        {
            message.channel.send('Nobody has indicated they will no longer be ready soon');
        }
        else
        {
            //generates the first line of the list
            var list = 'The following ';


            if (num === 1)
            {
                list = list + 'person';
            }
            else
            {
                list = list + num + ' people';
            }

            list = list + ' will be ready for a while:\n';

            //adds each ready person to the list
            bot.sooners.forEach(sooner =>
            {
                if (sooner.type === 'until')
                {
                    var hour = sooner.hour;
                    var minute = sooner.minute;

                    var am = true;

                    if (hour > 11)
                    {
                        am = false;
                    }


                    list += bot.guild.members.cache.get(sooner.id).displayName + ' will be ready until ';

                    if (am)
                    {
                        list += hour;
                    }
                    else
                    {
                        list += (hour - 12);
                    }


                    if (minute < 10)
                    {
                        list += ':0'
                    }
                    else
                    {
                        list += ':'
                    }

                    if (am)
                    {
                        list += minute + 'am';
                    }
                    else
                    {
                        list += minute + 'pm';
                    }

                    list += '\n';
                }
            })


            //sends the list
            message.channel.send(list);
        }
    }
}  