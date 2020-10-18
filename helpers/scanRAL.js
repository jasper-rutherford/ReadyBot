module.exports = {
    name: 'scanRAL',
    secret: false,
    description: "Scans in the sooners (RAL) from the relevant file",
    execute(params, bot)
    {
        const fs = require('fs');

        var fileName = 'readyAtList.json';
        if (bot.testbuild)
        {
            fileName = 'testReadyAtList.json';
        }

        //reads in the array of readyat times from the file
        var data = JSON.parse(fs.readFileSync(fileName));

        //converts the array into the collection in the bot
        data.readyAtList.forEach(thing =>
        {
            var sooner =
            {
                id: thing[0],
                hour: thing[1],
                minute: thing[2]
            }

            bot.sooners.set(sooner.id, sooner);
        });

        console.log('ReadySoon data has been read in');
    }
}  