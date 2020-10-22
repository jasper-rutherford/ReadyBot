// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'removeparty',
    alt: 'remove',
    secret: false,
    description: "deletes an established game party",
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
            message.channel.send('That party doesn\'t exist');
        }
        else if (!bot.parties.get(name).members.get(message.author.id)) {
            message.channel.send("You arn\'t in " + name);
        }
        else {
            message.channel.send("🦀" + name + " IS GONE🦀");

            bot.parties.delete(name);
            
            bot.helpers('saveParties', 0);
        }
    }
}