module.exports = {
    name: 'settheme',
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
                message.channel.send('newtheme <themename>');
            }
            else
            {
                bot.setThemeMsg = message;
                bot.setTheme(themeName);
            }
        }
    }
}