module.exports = {
    name: 'createTheme',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        { 
            let themeName = args.shift();
            let playlistIDs = [];

            let failed = false;
            for (let lcv = 0; lcv < 6; lcv++)
            {
                playlistIDs[lcv] = args.shift();
                if (playlistIDs[lcv] === undefined)
                {
                    failed = true;
                }
            }

            if (failed)
            {
                message.channel.send('newTheme <themeName> <playlist id 1> <playlist id 2> <playlist id 3> <playlist id 4> <playlist id 5> <playlist id 6>');
            }
            else
            {
                bot.newTheme(themeName, playlistIDs);
            }
        }
    }
}