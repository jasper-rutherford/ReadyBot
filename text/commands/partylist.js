module.exports = {
    name: 'listparty',
    alt: 'list',
    secret: false,
    description: "Lists members of the selected party",
    execute(message, args, bot) {
        if (!bot.temp)
        {
        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            const Discord = require('discord.js');
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
            //create an array of words in the 'name' string
            var namearr = name.split(" ");
            name = "";
            for (c = 0; c < namearr.length; c++) {
                //capitalize the words in 'name' and read them back into a string
                name += namearr[c].charAt(0).toUpperCase() + namearr[c].substring(1) + " ";
            }
            if (fs.existsSync(filename)) {
                //creates an embed with 'name' as the title
                const partyembed = new Discord.MessageEmbed().setTitle(name);
                partyembed.color = 0x7289da;
                //reads the file called 'name' into a string variable
                var data = fs.readFileSync(filename, 'utf8');
                //remove quotes from the file contents
                data = data.substring(1, data.length - 1);
                //separate data from different users and read them into an array
                var arr = data.split(" : ");
                //for each item in the array add the user's name to 'desc'
                var desc = "";
                for (let i = 0; i < arr.length; i++) {
                    desc += (((i + 1) + ". ") + arr[i].split(", ")[0] + "\n");
                }
                //set the embed description to 'desc'
                partyembed.setDescription(desc);
                //print the embed, listing the users belonging to a certain party
                message.channel.send(partyembed);
            }
            else {
                message.channel.send("That party doesn't exist");
            }
        }
        else {
            message.channel.send("Try entering a party to list");
        }
    }
}}