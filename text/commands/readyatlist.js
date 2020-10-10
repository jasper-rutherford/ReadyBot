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
                if (minutes < 10)
                {
                    list = list + bot.guild.members.cache.get(member[0]).displayName + ' will be ready at ' + hours + ':0' + minutes + '\n';
                }
                else
                {
                    list = list + bot.guild.members.cache.get(member[0]).displayName + ' will be ready at ' + hours + ':' + minutes + '\n';
                }
            })


            //sends the list
            message.channel.send(list);
        }
    }
}  