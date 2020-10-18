// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'leaveparty',
    alt: 'leave',
    secret: false,
    description: "Leaves an established game party",
    execute(message, args, bot) {
        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            var user = message.author.username + ", " + message.author.id;
            //read the args and create a name
            name = '';
            yeet = 0;
            while (args.length > yeet) {
                name += " " + args[yeet];
                yeet++;
            }
            var name = name.substring(1);
            //create a file directory sring that represents the party
            var filename = bot.helper('constructFile', args);
            if (fs.existsSync(filename)) {
                //check the file to see if the user that sent the message is in it
                para = [filename, user];
                var x = bot.helper("fileContainsUser", para);
                var data = fs.readFileSync(filename, 'utf8').substring(1, fs.readFileSync(filename, 'utf8').length - 1);
                //if the file exists and the user is in it, yeet them
                if (x) {
                    //create an array of users
                    var arr = data.split(" : ");
                    var strnewlist = "";
                    y = 0;
                    while (y < data.split(" : ").length) {
                        //if 'user' is equal to the user that send the message do not add them to the new list
                        if (data.split(" : ")[y].localeCompare(user) == 0) {
                        }
                        //if 'user' is not equal to the user that send the message add them to the new list
                        else {
                            strnewlist += " : " + data.split(" : ")[y];
                        }
                        y++;
                    }
                    // remove the " : " from the beginning of the list
                    strnewlist = strnewlist.substring(3);
                    //rewrite the file without the user
                    fs.writeFile(filename, JSON.stringify(strnewlist), e => {
                        if (e) throw e;
                    });
                    message.channel.send("I've removed you from '" + name + "'");
                    //if they were the only member of the party delete the party
                    if (fs.readFileSync(filename, 'utf8').localeCompare('""""') == 0) {
                        fs.unlinkSync(filename);
                        var partycheck = fs.readFileSync("partyarchive.json", 'utf8').substring(1, fs.readFileSync("partyarchive.json", 'utf8').length - 1).split(" : ");
                        var tempstr = "";
                        for (i = 0; i < partycheck.length; i++) {
                            if (partycheck[i].includes(name)) {
                                //skip, it's empty 'now we only want it gone'
                            }
                            else {
                                //add it to the new string, it's 'still alive'
                                tempstr += " : " + partycheck[i];
                            }
                        }
                        tempstr = tempstr.substring(3);
                        fs.writeFile("partyarchive.json", JSON.stringify(tempstr), e => {
                            if (e) throw e;
                        });
                        message.channel.send("I can't believe you just ended that party");
                    }
                }
            }
            //what party?
            else if (!fs.existsSync(filename)) {
                message.channel.send("That party doesn't exist...");
            }
            //can't leave what you didn't join
            else {
                message.channel.send("You already aren't in '" + name + "'");
            }
        }
        else {
            message.channel.send("Try naming a party");
        }
    }
}