module.exports = {
    name: 'saveRAL',
    secret: false,
    description: "Saves the sooners (RAL) to the appropriate file",
    execute(params, bot)
    {
        const FileSystem = require("fs");

        var wrapper =
        {
            readyAtList: []
        }

        //converts the collection of readyat times to an array of readyat times
        bot.sooners.forEach(sooner =>
        {
            var soonerArray = [sooner.id, sooner.hour, sooner.minute];

            wrapper.readyAtList.push(soonerArray);
        });

        var fileName = 'readyAtList.json';
        if (bot.testbuild)
        {
            fileName = 'testReadyAtList.json';
        }

        //saves the array to a file
        FileSystem.writeFile(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    }
}  