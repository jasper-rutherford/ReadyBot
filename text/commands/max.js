const fs = require('fs');
module.exports = {
    name: 'max',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
           if (bot.mode == "vote")
           {
               let max = args.shift();
               if (max != undefined)
               {
                    bot.voteMax = max;
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