module.exports = {
    name: 'reset',
    secret: false,
    description: "Resets the readylist",
    execute(message, args, bot)
    {
        if (args === 'auto')
        {
            bot.readyRole.members.forEach(member =>
            {
                member.roles.remove(bot.readyRole);
            })

            bot.readyBotChannel.send('It\'s Tomorrow! I\'ll reset the list.');

            bot.helper('updateNumReady', { numReady: 0 });
        }
        else
        {
            if (message.member.hasPermission('MANAGE_ROLES'))
            {
                if (message.member.id === bot.mattID)
                {
                    message.channel.send('Yeah ok matt');
                }
                else
                {
                    bot.readyRole.members.forEach(member =>
                    {
                        member.roles.remove(bot.readyRole);
                    })

                    message.channel.send('Nobody is ready!');
                }

                bot.helper('updateNumReady', { numReady: 0 });
            }
            else
            {
                message.channel.send('You need the manage roles permission to use this');
            }
        }
    }
}  