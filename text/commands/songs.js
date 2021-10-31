module.exports = {
    name: 'songs',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            message.channel.send("react").then(sent =>
            {
                bot.songMessage = sent;
                sent.react('🤮')
                .then(() => sent.react('👎'))
                .then(() => sent.react('👍'))
                .then(() => sent.react('🥰'))
                .catch(error => console.error('One of the emojis failed to react:', error));
                });
        }
    }
}