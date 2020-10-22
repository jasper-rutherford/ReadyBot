// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'leaveparty',
    alt: 'leave',
    secret: false,
    description: "leaves an established game party",
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
            bot.parties.get(name).members.delete(message.author.id);

            message.channel.send("You've left " + name);

            var count = 0;
            bot.parties.get(name).members.forEach(member => {
                count++;
            });

            if (count === 0)
            {
                bot.parties.delete(name);
                message.channel.send("🦀" + name + " IS GONE🦀");
            }
            bot.helpers('saveParties', 0);
        }
    }
}