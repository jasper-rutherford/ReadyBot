module.exports = {
    name: 'extendplaylist',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            let fromPlaylistID = args.shift();
            let toPlaylistID = args.shift();

            //get the length of the playlist 
            bot.spotifyApi.getPlaylist(id).then(function (data)
            {
                let length = data.body.tracks.total;

                //if the playlist is not empty
                if (length != 0)
                {
                    //api limits the limit to 100 tracks
                    bot.spotifyApi.getPlaylistTracks(id, {
                        limit: 100,
                        fields: 'items'
                    }).then(function (data)
                    {
                        let tracks = [];

                        data.body.items.forEach(item =>
                        {
                            //convert each track to an object and add it to the list
                            tracks.push({ uri: item.track.uri });
                            console.log(item);
                        });

                        //delete all the tracks covered by this chunk of the for loop
                        bot.spotifyApi.removeTracksFromPlaylist(id, tracks).then(function (data)
                        {
                            bot.clearPlaylist(id, reloading);
                        }, function (err)
                        {
                            console.log('failed to remove tracks from playlist ' + id);
                        });
                    }, function (err)
                    {
                        console.log('failed to get tracks from playlist ' + id);
                    });
                }
                //otherwise if the length == 0
                else
                {
                    //report that the playlist has been cleared
                    console.log("cleared playlist " + id);
                    //if currently reloading, then load the playlist back in
                    if (reloading)
                    {
                        console.log("loading the playlist back in");
                        // console.log("valuehead uri before loading: " + bot.valuesHead.uri);
                        bot.loadPlaylist(id, reloading, bot.valuesHead, 0);
                    }
                }
            }, function (err)
            {
                console.log('failed to get the length of playlist ' + id);
            });
        }
    }
}  