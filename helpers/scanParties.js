module.exports = {
    name: 'scanParties',
    secret: false,
    description: "Scans in the parties from the relevant file",
    execute(params, bot)
    {
        const Discord = require('discord.js');
        const fs = require('fs');

        var fileName = './data/parties.json';
        if (bot.testbuild)
        {
            fileName = './data/testParties.json';
        }

        //reads in the wrapper for the parties array from the file
        var partiesWrapper = JSON.parse(fs.readFileSync(fileName));

        partiesWrapper.parties.forEach(arrayParty =>
        {
            var botParty =
            {
                name: arrayParty.name,
                members: new Discord.Collection
            }

            arrayParty.members.forEach(arrayMember =>
            {
                var botMember = 
                {
                    id: arrayMember[0],
                    displayName: arrayMember[1]
                }

                botParty.members.set(botMember.id, botMember);
            });

            bot.parties.set(botParty.name, botParty);
        });

        console.log('Parties have been read in');
    }
}  