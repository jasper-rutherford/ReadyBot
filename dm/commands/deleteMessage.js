module.exports = {
    name: 'delmsg',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            var channelID = args.shift();
            var msgID = args.shift();

            if (channelID === undefined || msgID === undefined)
            {
                message.channel.send('delmsg <channelID> <messageID>');
            }
            else
            {
                var content;
                //get the channel
                bot.client.channels.fetch(channelID)
                    .then(channel => 
                    {
                        //delete target message
                        channel.messages.fetch(msgID)
                            .then(msg =>
                            {
                                content = msg.content;
                                msg.delete();

                                message.react('✅');

                                message.channel.send('Successfully deleted "' + content + '"');
                            })
                            .catch();
                    })
                    .catch();

                setTimeout(function ()
                {
                    if (content === undefined)
                    {
                        message.react('❌');
                    }
                }, 1000);

            }
        }
        else
        {
            //pretend the command doesnt exist
            message.channel.send('That\'s not a command, bucko');

            //send attempt to jaspa
            bot.helpers('relayMsgToJaspa', { message: message });
        }
    }
}  