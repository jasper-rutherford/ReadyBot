module.exports = {
    name: 'delmsg',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        { 
            bot.spotifyApi.removeTracksFromPlaylist()
            bot.spotifyApi.removeTracksFromPlaylist('446i69szgjkow87ew9yjbbhnn ', '1sk0YLFu6qEeV3E57Nu6L7', {positions: [0, 100]});
        }
    }
}