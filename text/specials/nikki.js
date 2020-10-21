module.exports = {
    id: '421762252530515981',
    name: 'nikki',
    secret: false,
    description: "",
    execute(message, bot)
    {
        if (true) //reacts to nikki's messages with a 🌴
        {
            var date = new Date();
            var hours = 23 - date.getHours();

            hours -= 2;
            if (hours < 0)
            {
                hours += 24;
            }

            //more likely to react later in the night
            if (Math.random() < hours / 23)
            {
                message.react('🌴');
            }
        }

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