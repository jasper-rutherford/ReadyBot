module.exports = {
    name: 'readyatclear',
    secret: false,
    description: "Resets the RAL",
    execute(message, args, bot)
    {
        if (message.member.hasPermission('MANAGE_ROLES'))
        {
            bot.sooners.forEach(sooner =>
            {
                bot.sooners.delete(sooner.id);
            });

            bot.helper('saveRAL', 0);

            message.channel.send('Nobody is ready soon!');
        }
        else
        {
            message.channel.send('You need the manage roles permission to use this');
        }
    }
}  