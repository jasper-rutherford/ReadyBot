module.exports = {
    name: '⏮',
    secret: false,
    description: "goes to the previous song",
    execute(params, bot)
    {
        let oldSong;

        //get current song
        bot.getCurrentSong().then((song) =>
        {
            //save song name
            oldSong = song.name

            //skip the song
            return bot.spotifyApi.skipToPrevious()
        })

        //get the current song
        .then(() => bot.getCurrentSong())

        //update stuff with new song
        .then((song) => 
        {
            //update the ballot to reflect new song
            bot.updateUtilityMessage(`No longer playing [${oldSong}]\nNow back to [${song.name}]`)

            //update logs
            console.log(`No longer playing [${oldSong}]\nNow back to [${song.name}]`)
        }), 
        function (err)
        {
            //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
            console.log('failed to skip');
        };
    }
}  