module.exports = {
    name: 'sendballot',
    secret: false,
    description: "sends a song ballot to the desired channel",
    execute(channel, bot)
    {
        channel.send("🎶 " + bot.currentTheme + " 🎶").then(sent =>
        {
            bot.songMessage = sent;
            sent.react('🤮')
            .then(() => sent.react('👎'))
            .then(() => sent.react('👍'))
            .then(() => sent.react('🥰'))
            .catch(error => console.error('One of the emojis failed to react'));
        });
    }
}  