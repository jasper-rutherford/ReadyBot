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
            
            let out = ""
            for (let lcv = 0; lcv < wrapper.themes.length; lcv++)
            {
                if (wrapper.themes[lcv] === bot.currentTheme)
                {
                    out += `[${wrapper.themes[lcv]}]\n`;
                }
                else
                {
                    out += `${wrapper.themes[lcv]}\n`;
                }
            }
        }
    }
}