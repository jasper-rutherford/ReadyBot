module.exports = {
    name: 'newtheme',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            let themeName = args.shift();

            console.log("new theme command has been run");

            //if theme already exists
            if (bot.themes.indexOf(themeName) != -1)
            {
                message.channel.send("Tried to add a theme that already exists.");
            }
            else
            {
                if (themeName === undefined)
                {
                    message.channel.send("\\newtheme <themename>");
                    console.log("themename undefined");
                }
                else
                {
                    console.log("themename defined");

                    let playlistIDs = [];
                    for (let i = 0; i < 6; i++)
                    {
                        let playlistID = args.shift();

                        if (playlistID === undefined)
                        {
                            message.channel.send("you need to supply 6 playlist ids after the theme name");
                            break;
                        }

                        playlistIDs.push(playlistID);
                        console.log(i + 1 + " good playlist input(s)");
                    }

                    console.log(playlistIDs.length + " playlists inputted");
                    if (playlistIDs.length == 6)
                    {
                        //give a reaction so that it is clear that stuff is happening
                        message.react('⌚')
                            .catch(error => console.error('One of the emojis failed to react'));
                        bot.newTheme(themeName, playlistIDs, message);
                    }
                }
            }
        }
    }
}