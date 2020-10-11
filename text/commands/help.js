module.exports = {
    name: 'help',
    secret: false,
    description: "duh",
    execute(message, args, bot)
    {
        var out = '';
        var commands = [];

        bot.client.things.get('textcommands').forEach(command =>
        {
            if (commands.indexOf(command.name) === -1 && !command.secret)
            {
                // this.addToOut(out, command, commands);
                if (out === '')
                {
                    out = command.name;
                }
                else
                {
                    out += '\n' + command.name;
                }

                if (command.alt != undefined)
                {
                    out += ' (or ' + command.alt + ')';
                }

                if (command.param != undefined)
                {
                    out += ' <' + command.param + '>';
                }

                out += ': ' + command.description;

                commands.push(command.name);
            }
        });

        message.channel.send(out);
    },

    addToOut: function (out, command, commands)
    {
        if (!command.secret)
        {

        }
    }
}