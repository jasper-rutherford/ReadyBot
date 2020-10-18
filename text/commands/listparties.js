module.exports = {
    name: 'listparties',
    secret: false,
    description: "Declares yourself not ready",
    execute(message, args, bot) {
        //create necessary variables
        const Discord = require('discord.js');
        const fs = require('fs');
        const partyembed = new Discord.MessageEmbed().setTitle("Parties");
        //read file directory and construct an array of file names
        var data = fs.readFileSync('partyarchive.json', 'utf8').substring(1, fs.readFileSync('partyarchive.json', 'utf8').length - 1);
        var strfiles = data.split(" : ");
        for (i = 0; i < strfiles.length; i++) {
            strfiles[i] = (strfiles[i].split(", ")[1]);
        }
        //convert the items in the array into properly capitalized names
        var desc = "";
        for (i = 0; i < strfiles.length; i++) {
            //create an array of words in the name
            var namearr = strfiles[i].split(" ");
            strfiles[i] = "";
            //capitalize each word in the array and read them back into strfiles
            for (c = 0; c < namearr.length; c++) {
                strfiles[i] += namearr[c].charAt(0).toUpperCase() + namearr[c].substring(1) + " ";
            }
            //construct a list of party names
            desc += (i + 1) + ". " + strfiles[i] + "\n";
        }
        //if the list has at least one element, print
        if (desc.localeCompare("") != 0) {
            partyembed.setDescription(desc);
            partyembed.color = 0x7289da;
            //print the embed with the list of parties
            message.channel.send(partyembed);
        }
        //if the list is empty tell the user so
        else {
            message.channel.send("There are no active parties at the moment");
        }
    }
}