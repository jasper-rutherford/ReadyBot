module.exports = {
    id: '367706124926844929',
    name: 'boris',
    secret: false,
    description: "",
    execute(message, bot)
    {
        if (true) //reacts to boris' messages with a 🎄
        {
            let date = new Date();
            let hours = date.getHours();

            hours -= 3;
            if (hours < 0)
            {
                hours += 24;
            }

            //more likely to react later in the night
            if (Math.random() < hours / 23)
            {
                message.react('🎄');
            }
        }
    }
}  