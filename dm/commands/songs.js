module.exports = {
    name: 'songs',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            bot.helpers('sendballot', message.channel);
        }
    }
}