// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'pingparty',
    secret: false,
    description: "annoys the members of an established game party",
    execute(message, args, bot) {
        if (!bot.temp)
        {
        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            var user = message.author.username + ", " + message.author.id;
            //create a file directory sring that represents the party
            var filename = bot.helpers('constructFile', args);
            //checks the file to see if the user is there
            para = [filename, user];
            var x = bot.helpers("fileContainsUser", para);
            //if the file exists and the user is in the file ping the other members
            if (fs.existsSync(filename) && x) {
                //create a list of users in the file
                var data = fs.readFileSync(filename, 'utf8').substring(1, fs.readFileSync(filename, 'utf8').length - 1);
                var arr = data.split(" : ");
                var strnewlist = "";
                y = 0;
                while (y < data.split(" : ").length) {
                    if (data.split(" : ")[y].localeCompare(user) == 0) {
                        //don't add the user that sent the message to the ping string
                    }
                    else {
                        //construct a ping string
                        strnewlist += ", " + `<@${data.split(" : ")[y].split(", ")[1]}>`;
                    }
                    y++;
                }
                //remove the ", " at the start of the string
                strnewlist = strnewlist.substring(2);
                //PING!!!!
                bot.readyBotChannel.send(strnewlist + " are y'all ready yet?");
            }
            //if the file doesn't exist
            else if (!fs.existsSync(filename)) {
                message.channel.send("That party doesn't exist");
            }
            //if the user is not in the specified party, DO NOT LET THEM PING!!!!
            else {
                message.channel.send("You can't ping a party that you aren't in");
            }
        }
        else {
            message.channel.send("I can't ping without a party");
        }
    }
}}