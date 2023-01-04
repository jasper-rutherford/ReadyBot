module.exports = {
    name: '⏭',
    secret: false,
    description: "skips the current song",
    execute(params, bot)
    {
        //skip the song
        bot.spotifyApi.skipToNext().then(function ()
        {
            // console.log('Skip to next');
        }, function (err)
        {
            //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
            console.log('failed to skip');
        });
    }
}  