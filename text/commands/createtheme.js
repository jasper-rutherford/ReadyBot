module.exports = {
    name: 'createtheme',
    secret: false,
    spam: false,
    description: "Creates a theme",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            let themeName = args.shift().toLowerCase();

            console.log("create theme command has been run");
            if (themeName === undefined)
            {
                message.channel.send("\\createtheme <themename>");
                console.log("themename undefined");
            }
            else
            {
                console.log("themename defined");
                
                //give a reaction so that it is clear that stuff is happening
                message.react('🆗')
                    .catch(error => console.error('One of the emojis failed to react'));
                bot.createTheme(themeName, message);
            }
        }
    }
}