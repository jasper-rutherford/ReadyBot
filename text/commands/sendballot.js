module.exports = {
    name: 'ballot',
    secret: true,
    spam: false,
    description: "sends the ballot",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            //send ballot
            bot.helpers('sendballot', bot.client.channels.cache.get(bot.spotifyChannel));
        }
    }
}