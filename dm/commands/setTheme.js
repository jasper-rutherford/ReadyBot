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
                message.channel.send('settheme <themename>');
            }
            else
            {
                //give a reaction so that it is clear that stuff is happening
                message.react('⌚')
                    .catch(error => console.error('One of the emojis failed to react'));

                bot.setThemeMsg = message;
                bot.setTheme(themeName);

            }
        }
    }
}