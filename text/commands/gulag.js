module.exports = {
    name: 'gulag',
    param: 'Nominee',
    secret: false,
    spam: false,
    description: "Initiates a gulag vote",
    execute(message, args, bot)
    {
        //check that there is one person listed
        if (message.mentions.members.size === 0)
        {
            message.channel.send('Mention somebody, and we shall send them to the gulag.');
        }
        else if (message.mentions.members.size > 1)
        {
            message.channel.send('One at a time!');
        }
        else
        {
            //if there is already a vote active
            if (bot.voteActive)
            {
                message.channel.send('We must finish ' + bot.gulaguy.displayName + '\'s trial first. ');
            }
            //if there is no vote active
            else
            {
                //sets the person being sent to the gulag
                var gulaguy = message.mentions.members.first();

                bot.gulaguy = gulaguy;
                bot.gulaguyID = gulaguy.id;


                //no
                if (gulaguy.id === '754498512359653466' || gulaguy.id === '754865264390176839')
                {
                    message.channel.send('no');
                }
                //check if gulaguy is an imposter
                else if (gulaguy.roles.cache.has(bot.imposterRoleID))
                {
                    message.channel.send('I couldn\'t send them to the gulag if I wanted to.');
                }
                else
                {
                    //declare an active vote
                    bot.voteActive = true;


                    //if they are already in the gulag
                    if (gulaguy.roles.cache.has(bot.gulagRoleID))
                    {
                        message.channel.send(gulaguy.displayName + ' is already in the gulag. Do we want to release them?\n' +
                            'Yes: ' + bot.gulagYesVotes + ' No: ' + bot.gulagNoVotes).then(sent =>
                            {
                                bot.voteMessage = sent;
                            });
                    }
                    //if they arent in the gulag
                    else
                    {
                        message.channel.send(gulaguy.displayName + ' is not yet in the gulag. Do we want to send them?\n' +
                            'Yes: ' + bot.gulagYesVotes + ' No: ' + bot.gulagNoVotes).then(sent =>
                            {
                                bot.voteMessage = sent;
                            });
                    }
                }
            }
        }
    }
}