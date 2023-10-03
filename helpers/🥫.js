module.exports = {
    name: '🥫',
    secret: false,
    description: "checks that all songs in the database are in the barrel",
    execute(params, bot)
    {
        // read the barrel for tracks
        bot.getTracks(bot.barrelID)
        .then((barrelTracks) => {
            // convert to uris
            barrelUris = barrelTracks.map((track) => track.track.uri)

            // get distinct uris from the database
            return new Promise((resolve, reject) => {
                bot.query(`SELECT DISTINCT spotify_uri FROM scores`)
                .then((results) => {
                    console.log(results)
                    resolve({barrelUris: barrelUris, dbUris: results.rows.map((row) => row.spotify_uri)})
                })
            })
        })
        .then((item) => {
            let missingUris = []

            // check that each uri is in the barrel
            item.dbUris.forEach((uri) => {
                if (!item.barrelUris.includes(uri))
                {
                    missingUris.push(uri)
                }
            })

            return bot.addSongsToPlaylist(bot.barrelID, missingUris)
        })
    }
}  