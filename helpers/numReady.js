module.exports = {
    name: 'numReady',
    secret: false,
    description: "Counts how many people are ready",
    execute(params, bot)
    {
        bot.guild.members.fetch()
            .then()
            .catch(console.error);

        var out = bot.guild.roles.cache.get(bot.readyRoleID).members.size;
        
        return out;
    }
}  