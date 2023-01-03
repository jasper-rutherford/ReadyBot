const fs = require('fs');
module.exports = {
    name: 'listthemes',
    secret: false,
    spam: false,
    description: "Lists all themes that currently exist",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            var fileName = './data/spotify/themes.json';
            var wrapper = JSON.parse(fs.readFileSync(fileName));

            for (let lcv = 0; lcv < wrapper.themes.length; lcv++)
            {
                if (wrapper.themes[lcv] === bot.currentTheme)
                {
                    message.channel.send("[" + wrapper.themes[lcv] + "]");
                }
                else
                {
                    message.channel.send(wrapper.themes[lcv]);
                }
            }
        }
    }
}