module.exports = {
    name: 'setTheme',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        { 
            let themeName = args.shift();

            if (themeName === undefined)
            {
                message.channel.send('newTheme <themeName>');
            }
            else
            {
                bot.setTheme(themeName);
            }
        }
    }
}