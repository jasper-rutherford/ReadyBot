module.exports = {
    name: 'readyatlist',
    alt: 'readysoonlist',
    secret: false,
    description: "Lists the people who will be ready soon.",
    execute(message, args, bot)
    {
        if (bot.readySoon.size === 0)
        {
            message.channel.send('Nobody has indicated they will be ready soon');
        }
        else
        {
            //generates the first line of the list
            let list = 'The following ';


            if (bot.readySoon.size === 1)
            {
                list = list + 'person';
            }
            else
            {
                list = list + bot.readySoon.size + ' people';
            }

            list = list + ' will be ready soon:\n';

            //adds each ready person to the list
            bot.readySoon.forEach(member =>
            {
                let minutes = member[2];
                let hours = member[1];

                let am = true;

                if (hours > 11)
                {
                    am = false;
                }


                list += bot.guild.members.cache.get(member[0]).displayName + ' will be ready at ';

                if (am)
                {
                    list += hours;
                }
                else
                {
                    list += (hours - 12);
                }


                if (minutes < 10)
                {
                    list += ':0'
                }
                else
                {
                    list += ':'
                }

                if (am)
                {
                    list += minutes + 'am';
                }
                else
                {
                    list += minutes + 'pm';
                }

                list += '\n';
            })


            //sends the list
            message.channel.send(list);
        }
    }
}  