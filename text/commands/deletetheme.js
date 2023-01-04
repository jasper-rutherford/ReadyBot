const fs = require('fs');

module.exports = {
    name: 'deletetheme',
    secret: false,
    spam: false,
    description: "Deletes a provided theme",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            //parse input
            let themeName = args.shift();

            for (let i = 0; i < 1; i++)
            {
                //cannot delete default theme
                if (themeName === "default")
                {
                    message.channel.send("Cannot delete the default theme")
                    break
                }

                //if theme does not exist
                if (!bot.themes.includes(themeName))
                {
                    message.channel.send(`Unable to find theme called "${themeName}"`)
                    break
                }

                // if this is the first time trying to delete this theme
                if (!(bot.themeToDelete === themeName))
                {
                    bot.themeToDelete = themeName

                    //request that the user run the command again to verify that they want to delete
                    message.channel.send(`Are you sure you want to delete "${themeName}"?\nRun "deletetheme ${themeName}" again to confirm.`)
                }
                //if this is the second time they are running the command
                else
                {
                    bot.themeToDelete = undefined

                    message.channel.send(`Deleting ${themeName}`)
                    .then(message => 
                    {
                        //if current theme, set theme to default
                        if (themeName === bot.currentTheme)
                        {
                            bot.setTheme("default")
                        }

                        //remove from bot.themes
                        bot.themes.splice(bot.themes.indexOf(themeName), 1)

                        //save bot.themes
                        bot.saveThemes()

                        //delete theme's json file with scores
                        try 
                        {
                            let fileName = './data/spotify/themes/' + themeName + '.json';
                            fs.unlinkSync(fileName);

                            console.log(`Deleted the theme called "${themeName}" successfully.`);
                            message.edit(`Deleted ${themeName}. Go delete the actual playlist on spotify`) //TODO 
                        } 
                        catch (error) 
                        {
                            console.log("Couldn't delete the file for theme " + themeName)
                            console.log(error);
                            console.log("Couldn't delete the file for theme " + themeName)
                        }
                    })
                }

            }
        }
    }
}