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
            var user = [message.author.username, message.author.id];
            var name = args.join(' ');

            //create a file directory string that represents the party
            var filename = bot.helper('constructFile', args);
            if (fs.existsSync(filename)) {
                var data = JSON.parse(fs.readFileSync(filename));
                //check the file to see if the user that sent the message is in it
                para = [filename, user];
                var x = bot.helper("fileContainsUser", para);
                //if the file exists and the user is in it, yeet them
                if (x) {
                    //create an array of users
                    var wrapper = {
                        userList: []
                    }
        
                    data.userList.forEach(element =>
                    {
                        //if 'user' is not equal to the user that sent the message add them to the new list
                        if (!element[1].localeCompare(message.author.id) == 0)
                        {
                            wrapper.userList.push(element);
                        }
                    });

                    //rewrite the file without the user
                    fs.writeFile(filename, JSON.stringify(wrapper), e => {
                        if (e) throw e;
                    });
                    message.channel.send("I've removed you from '" + name + "'");
                    //if they were the only member of the party delete the party
                    if (wrapper.userList.length == 0) {
                        fs.unlinkSync(filename);
                        //update party folder
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
                        fs.writeFile("partyarchive.json", JSON.stringify(wrapper2), e => {
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