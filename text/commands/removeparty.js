// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'removeparty',
    alt: 'remove',
    secret: false,
    description: "OBLITERATES an established game party",
    execute(message, args, bot) {
        if (!bot.temp)
        {
        const fs = require('fs');
        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            //read the args and create a name
            name = '';
            yeet = 0;
            while (args.length > yeet) {
                name += " " + args[yeet];
                yeet++;
            }
            var name = name.substring(1);
            //create a file directory sring that represents the party
            var filename = bot.helpers('constructFile', args);
            //determines if the file exists/should be deleted
            if ((message.member.hasPermission('MANAGE_ROLES')) && (fs.existsSync(filename))) {
                fs.unlinkSync(filename);
                message.channel.send("That party got rekt m8");
                //remove the id and party name from the archive file
                newpartieslist = "";
                var temp = fs.readFileSync("partyarchive.json").substring(1, fs.readFileSync("partyarchive.json").length - 1);
                data = temp.split(" : ");
                for (c = 0; c < data.length; c++) {
                    if (data[c].includes(name)) {
                        //skip the deleted file
                    }
                    else {
                        newpartieslist += " : " + data[c];
                    }
                }
                newpartieslist = newpartieslist.substring(3);
                //rewrite the file excluding the dead party
                fs.writeFile("partyarchive.json", JSON.stringify(newpartieslist), e => {
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
    }}
}