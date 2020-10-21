// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'removeparty',
    alt: 'remove',
    secret: false,
    description: "OBLITERATES an established game party",
    execute(message, args, bot) {
        const fs = require('fs');
        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            //read the args and create a name
            var name = args.join(' ');
            //create a file directory sring that represents the party
            var filename = bot.helper('constructFile', args);
            //determines if the file exists/should be deleted
            if ((message.member.hasPermission('MANAGE_ROLES')) && (fs.existsSync(filename))) {
                fs.unlinkSync(filename);
                message.channel.send("That party got rekt m8");
                //remove the id and party name from the archive file
                var partycheck = JSON.parse(fs.readFileSync("partyarchive.json"));
                wrapper2 = {
                    partyList: []
                }
                partycheck.partyList.forEach(element => {
                    if (!element[1].localeCompare(name) == 0)
                    {
                        wrapper2.partyList.push(element);
                    }
                });
                //rewrite the file excluding the dead party
                fs.writeFile("partyarchive.json", JSON.stringify(wrapper2), e => {
                    if (e) throw e;
                });
            }
            else if (!message.member.hasPermission('MANAGE_ROLES')) {
                message.channel.send("Get better perms nerd");
            }
            else {
                message.channel.send("That party doesn't exist");
            }
        }
    }
}