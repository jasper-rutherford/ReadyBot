// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'joinparty',
    alt: 'join',
    secret: false,
    description: "Joins an established game party",
    execute(message, args, bot) {

        if (args.length) {
            //create necessary variables
            const fs = require('fs');
            var user = [message.author.username, message.author.id];
            var name = args.join(' ');

            var wrapper = {
                userList: []
            }

            //create a file directory sring that represents the party
            var filename = bot.helper('constructFile', args);
            //check the file to see if the user that sent the message is in it
            para = [filename, user];
            var x = bot.helper("fileContainsUser", para);
            //if the file exists and the user is not in it, add them
            if (fs.existsSync(filename) && !x) {
                //add the user to the party
                var data = JSON.parse(fs.readFileSync(filename));
                
                data.userList.forEach(element =>
                {
                    if (!element[0].includes(message.author.id))
                    {
                        var userArr = [element[0], element[1]];
            
                        wrapper.userList.push(userArr);
                    }
                });
    
                wrapper.userList.push(user);
    
                fs.writeFile(filename, JSON.stringify(wrapper), e => {
                    if (e) throw e;
                });
                message.channel.send("I've added you to '" + name + "'");
            }
            //if the user is already in the party tell them to fuck off
            else if (x) {
                message.channel.send("You have already joined '" + name + "'");
            }
            //what party?
            else {
                message.channel.send("That party doesn't exist...");
            }
        }
        else {
            message.channel.send("Try naming your party");
        }
    }
}