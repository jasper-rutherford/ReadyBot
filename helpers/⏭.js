module.exports = {
    name: '⏭',
    secret: false,
    description: "skips the current song",
    execute(params, bot)
    {
        let oldSong;

        //get current song
        bot.getCurrentSong().then((song) =>
        {
            //save song name
            oldSong = song.name

            //skip the song
            return bot.spotifyApi.skipToNext()
        })

        //get the current song
        .then(() => bot.getCurrentSong())

        //update stuff with new song
        .then((song) => 
        {
            //update the ballot to reflect new song
            bot.updateBallot(`Skipped [${oldSong}]\nNow playing [${song.name}]`)

            //update logs
            console.log(`Skipped [${oldSong}]\nNow playing [${song.name}]`)
        }), 
        function (err)
        {
            //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
            console.log('failed to skip');
        };
    }
}  