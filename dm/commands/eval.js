module.exports = {
    name: 'eval',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            let stuff = args.shift();
            for (let lcv = 0; lcv < args.length; lcv++)
            {
                stuff += " " + args.shift();
            }
            try
            {
                eval(stuff);
            }
            catch
            {
                console.log("failed to eval");
                message.channel.send("failed to eval");
            }
        }
    }
}