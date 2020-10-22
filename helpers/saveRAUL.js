//written by Jasper Rutherford, tweaked by Josiah Vanevenhoven
module.exports = {
    name: 'saveRAUL',
    secret: false,
    description: "Saves the sooners (RAL) to the appropriate file",
    execute(params, bot)
    {
        const FileSystem = require("fs");

        var wrapper =
        {
            RAUL: []
        }

        //converts the collection of readyAU times to an array of readyAU times
        bot.RAUL.forEach(sooner =>
        {
            var soonerArray = [sooner.id, sooner.hour1, sooner.minute1, sooner.hour2, sooner.minute2];

            wrapper.RAUL.push(soonerArray);
        });

        var fileName = './data/readyAtUntilList.json';
        if (bot.testbuild)
        {
            fileName = './data/testReadyAtUntilList.json';
        }

        //saves the array to a file
        FileSystem.writeFile(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    }
}  