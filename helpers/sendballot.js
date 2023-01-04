module.exports = {
    name: 'sendballot',
    secret: false,
    description: "sends a song ballot to the desired channel",
    execute(channel, bot)
    {
        let content = `🎶 Current Theme: [${bot.currentTheme}] 🎶`;

        channel.send(content).then(sent =>
        {
            bot.ballotMessage = sent;
            sent.react('⏬')
            .then(() => sent.react('⬇'))
            .then(() => sent.react('⬆'))
            .then(() => sent.react('⏭'))
            .then(() => sent.react('🔀'))
            .then(() => sent.react('↕'))
            .catch(error => console.error('One of the emojis failed to react'));
        });
    }
}  