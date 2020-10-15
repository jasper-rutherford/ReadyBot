module.exports = {
    name: 'updateNumReady',
    secret: false,
    description: "updates to say the bot is playing how many people are ready",
    execute(params, bot)
    {
        var numReady = params.numReady;
        var client = bot.client;

        if (numReady === 0)
        {
            client.user.setActivity('Nobody is ready!');
        }
        else if (numReady === 1)
        {
            client.user.setActivity('1 person is ready!');
        }
        else 
        {
            client.user.setActivity(numReady + ' people are ready!');
        }
    }
}  