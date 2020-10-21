// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'pingparty',
    secret: false,
    description: "annoys the members of an established game party",
    execute(message, args, bot) {
        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            var user = [message.author.username, message.author.id];
            //create a file directory sring that represents the party
            var filename = bot.helper('constructFile', args);
            //checks the file to see if the user is there
            para = [filename, user];
            var x = bot.helper("fileContainsUser", para);
            //if the file exists and the user is in the file ping the other members
            if (fs.existsSync(filename) && x) {
                //create a list of users in the file
                var data = JSON.parse(fs.readFileSync(filename));
                var strnewlist = "";
                y = 0;

                data.userList.forEach(element => {
                    if (element[1].localeCompare(message.author.id) != 0) {
                        //construct a ping string and don't add the user that sent the message to the ping string
                        strnewlist += ", " + `<@${element[1]}>`;
                    }
                });
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
}