const fs = require('fs');
module.exports = {
    name: 'min',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
           if (mode == "vote")
           {
               let min = args.shift();
               if (min != undefined)
               {
                    bot.voteMin = min;
                    bot.saveVoteMode;
                    message.react('✅')
                    .catch(error => console.error('One of the emojis failed to react'));
               }
               else 
               {
                    message.channel.send("max <val>");
               }
           }
           else
           {
                message.channel.send("vote mode not active.");
           }
        }
    }
}