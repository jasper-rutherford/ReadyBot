module.exports = {
    name: 'delmsg',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.member.id === bot.jaspaID)
        {
            var msgID = args.shift();

            //delete target message
            message.channel.messages.fetch(msgID)
                .then(msg => msg.delete())
                .catch();

            //delete the message that called the command
            message.delete();
        }
        else
        {
            //react accordingly
            message.channel.send('That\'s not a command, bucko');

            //send attempt to jaspa
            bot.helpers('relayMsgToJaspa', { message: message });
        }
    }
}  