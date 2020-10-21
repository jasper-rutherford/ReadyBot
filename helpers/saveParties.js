module.exports = {
    name: 'saveParties',
    secret: false,
    description: "Saves the parties to the appropriate file",
    execute(params, bot)
    {
        const FileSystem = require("fs");

        var partiesWrapper =
        {
            parties: []
        }

        bot.parties.forEach(botParty =>
        {
            var arrayParty =
            {
                name: botParty.name,
                members: []
            }

            botParty.members.forEach(member =>
            {
                arrayParty.members.push([member.id, member.displayName]);
            });

            partiesWrapper.parties.push(arrayParty);
        });

        var fileName = './data/parties.json';
        if (bot.testbuild)
        {
            fileName = './data/testParties.json';
        }

        //saves the array to a file
        FileSystem.writeFile(fileName, JSON.stringify(partiesWrapper), e =>
        {
            if (e) throw e;
        });
    }
}  