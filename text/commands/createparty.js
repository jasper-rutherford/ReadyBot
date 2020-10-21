// This code originally written by Josiah Vanevenhoven (Festive Neiso)
//rewritten by jaspa
module.exports = {
    name: 'createparty',
    alt: 'create',
    secret: false,
    description: "Creates a game party",
    execute(message, args, bot)
    {
        const Discord = require('discord.js');

        name = args.shift();

        if (name === undefined)
        {
            message.channel.send('Try adding a name for your party.');
        }
        else
        {
            if (name.includes('\\') || name.includes('\‌'))
            {
                message.channel.send('That\'s an illegal character bucko');
            }
            else
            {
                if (bot.parties.get(name) != undefined)
                {
                    message.channel.send('good news. that party already exists.');
                }
                else
                {
                    var party =
                    {
                        name: name,
                        members: new Discord.Collection
                    }

                    var member =
                    {
                        id: message.member.id,
                        displayName: message.member.displayName
                    }

                    party.members.set(member.id, member);

                    bot.parties.set(party.name, party);

                    bot.helpers('saveParties', 0);
                }
            }
        }
    }
}