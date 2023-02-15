module.exports = {
    name: 'CREATE',
    secret: false,
    description: "creates a theme for the provided emoji",
    execute(params, bot)
    {
        //check emoji is valid
        if (bot.getThemojis().includes(params.emoji))
        {
            console.log(`Tried to create a theme that already exists (${params.emoji})`);
            bot.updateUtilityMessage(`${params.emoji} already exists.`)
            return
        }

        console.log(`Attempting to create a theme ${params.emoji}`);

        //create a playlist                             probably messier than it could be :/
        bot.createPlaylist(params.emoji)
        .then ((playlistStuff) =>
        {
            //add theme to list of themes
            bot.multiThemes.push
            ({
                emoji: params.emoji,
                id: playlistStuff.playlistID
            }); 

            //give the songs a default score for this new theme
            bot.createDefaultScores(params.emoji)

            //save the new info to file
            bot.saveToFile()
            
            // send new playlist/theme to user
            bot.updateUtilityMessage(`${params.emoji}\n${playlistStuff.playlistURL}`)

            //react new emoji to VoteMessage
            bot.multiVoteMessage.react(params.emoji)
        });
    }
}  