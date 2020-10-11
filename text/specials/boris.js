module.exports = {
    id: '367706124926844929',
    name: 'boris',
    secret: false,
    description: "",
    execute(message, bot)
    {
        if (true) //reacts to boris' messages with a 🎄
        {
            var date = new Date();
            var hours = date.getHours();

            hours -= 2;
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