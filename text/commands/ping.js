module.exports = {
    name: 'ping',
    secret: false,
    description: "pings",
    execute(message, args, bot)
    {
        message.channel.send('pong idiot');
    }
}  