module.exports = {
    id: '360184741053595648',//'421762252530515981',
    secret: false,
    description: "",
    execute(message, bot)
    {
        if (message.content.toLowerCase().includes('whores'))
        {
            message.channel.send('*wores');
        }
        else if (message.content.toLowerCase().includes('whore'))
        {
            message.channel.send('*wore');
        }
    }
}  