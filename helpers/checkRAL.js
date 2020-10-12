const saveRAL = require("./saveRAL");

module.exports = {
    name: 'checkRAL',
    secret: false,
    description: "Checks if any sooners (RAL) are up",
    execute(params, bot)
    {
        var time = (60 - new Date().getSeconds()) * 1000;

        var check = function (bot)
        {
            var date = new Date();
            var hour = date.getHours();
            var minute = date.getMinutes();

            bot.sooners.forEach(sooner =>
            {
                if (hour === sooner.hour && minute === sooner.minute)
                {
                    bot.readyBotChannel.send(`Are ya ready yet, <@${sooner.id}>?`);
                    bot.sooners.delete(sooner.id);
                    bot.helper('saveRAL', 0);
                }
            });
        }

        //start looping when there are 0 loose seconds
        setTimeout(function ()
        {
            check(bot);

            //loop every 60 seconds
            setInterval(function ()
            {
                check(bot);
            }, 60000);

            console.log('Timer started');
        }, time);
    }
}  