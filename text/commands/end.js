module.exports = {
    name: 'end',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message === 'auto' || (message.member.roles.cache.has(bot.imposterRoleID) && bot.voteActive))
        {
            if (bot.gulagYesVotes > bot.gulagNoVotes)
            {
                //flip gulaguy to/from gulag
                if ((bot.gulaguy.roles.cache.has(bot.gulagRoleID)))
                {
                    bot.gulaguy.roles.add(bot.memberRole);
                    bot.gulaguy.roles.remove(bot.gulagRole);

                    bot.voteMessage.channel.send(bot.gulaguy.displayName + ' has been released from the gulag.');
                }
                else 
                {
                    bot.gulaguy.roles.add(bot.gulagRole);
                    bot.gulaguy.roles.remove(bot.memberRole);

                    bot.voteMessage.channel.send(bot.gulaguy.displayName + ' has been sent to the gulag.');
                }
            }
            else if (bot.gulagNoVotes > bot.gulagYesVotes)
            {
                if ((bot.gulaguy.roles.cache.has(bot.gulagRoleID)))
                {
                    bot.voteMessage.channel.send(bot.gulaguy.displayName + ' will remain in the gulag.');
                }
                else
                {
                    bot.voteMessage.channel.send(bot.gulaguy.displayName + ' will not be sent to the gulag.');
                }
            }
            else
            {
                bot.voteMessage.channel.send('Tie. There will be no change.');
            }

            //end vote
            bot.voteActive = false;
            bot.gulagYesVotes = 0;
            bot.gulagNoVotes = 0;
            bot.gulagVoters = [];

        }
        else if (!message.member.roles.cache.has(bot.imposterRoleID))
        {
            message.channel.send('Only Imposters can force a vote to end.');
        }
    }
}  