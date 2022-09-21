module.exports = {
    name: 'ethan',
    secret: true,
    spam: false,
    description: "",
    execute(message, args, bot)
    {
        let name = args.shift();
        
        if (message.author.id === bot.jaspaID)
        {
            bot.client.guilds.cache.get('752727453918691402').members.fetch('367706124926844929')
            .then(ethan => 
            {
                ethan.setNickname(name);
            })
            .catch(console.error);
        }
    }
}