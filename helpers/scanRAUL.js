//written by Jasper Rutherford, tweaked by Josiah Vanevenhoven
module.exports = {
    name: 'scanRAUL',
    secret: false,
    description: "Scans in the sooners (RAUL) from the relevant file",
    execute(params, bot)
    {
        const fs = require('fs');

        var fileName = './data/readyAtUntilList.json';
        if (bot.testbuild)
        {
            fileName = './data/testReadyAtUntilList.json';
        }

        //reads in the array of readyat times from the file
        var data = JSON.parse(fs.readFileSync(fileName));

        //converts the array into the collection in the bot
        data.RAUL.forEach(thing =>
        {
            var sooner =
            {
                id: thing[0],
                hour1: thing[1],
                minute1: thing[2],
                hour2: thing[3],
                minute2: thing[4],
            }

            bot.RAUL.set(sooner.id, sooner);
        });
        bot.helpers('saveRAUL', 0);

        console.log('ReadyAU data has been read in');
    }
}  