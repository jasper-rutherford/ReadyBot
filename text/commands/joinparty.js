// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'joinparty',
    alt: 'join',
    secret: false,
    description: "Joins an established game party",
    execute(message, args, bot) {
        const Discord = require('discord.js');

        name = args.join(' ');

        if (name === undefined) {
            message.channel.send('Try adding a name for your party.');
        }
        else if (name.includes('\\') || name.includes('\"')) {
            message.channel.send('That\'s an illegal character bucko');
        }
        else if (bot.parties.get(name) === undefined) {
            message.channel.send('That party doesn\'t exist yet');
        }
        else if (bot.parties.get(name).members.get(message.author.id)) {
            message.channel.send("You're already in " + name);
        }
        else {
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

            message.channel.send("You've joined " + name);
        }
    }
}