module.exports = {
    name: 'readylist',
    secret: false,
    description: "Lists all the people who are ready",
    execute(message, args, bot)
    {
        var numReady = message.guild.roles.cache.get(bot.readyRoleID).members.size;

        if (numReady === 0)
        {
            message.channel.send('Nobody is ready');
        }
        else
        {
            //generates the first line of the list
            var list = 'The following ';
            

            if (numReady === 1)
            {
                list = list + 'person is';
            }
            else
            {
                list = list + numReady + ' people are';
            }

            list = list + ' ready:\n';

            //adds each ready person to the list
            bot.readyRole.members.forEach(member =>
            {
                list = list + member.displayName + '\n';
            })


            //sends the list
            message.channel.send(list);
        }
    }
}  