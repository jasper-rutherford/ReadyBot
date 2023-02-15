module.exports = {
    name: 'ballots',
    secret: false,
    spam: false,
    description: "sends the multi ballots",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            //send ballot
            bot.helpers('sendballots', bot.client.channels.cache.get(bot.spotifyChannel));
        }
    }
}