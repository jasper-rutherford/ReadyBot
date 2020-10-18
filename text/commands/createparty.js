// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'createparty',
    alt: 'create',
    secret: false,
    description: "Creates a game party",
    execute(message, args, bot) {
        //read the args and create a name
        name = '';
        yeet = 0;
        while (args.length > yeet) {
            name += " " + args[yeet];
            yeet++;
        }
        var name = name.substring(1);
        var quote = name.includes('"') || name.includes('\\');
        if (args.length && !quote) {
            //create necessary variables
            const fs = require('fs');
            var user = message.author.username + ", " + message.author.id;
            //create a file directory sring that represents the party
            var filename = bot.helper('constructFile', args);
            //if the file does not exist create it and add the user
            if (!fs.existsSync(filename)) {
                fs.writeFile(filename, JSON.stringify(user), e => {
                    if (e) throw e;
                });
                message.channel.send("I've created a party called '" + name + "' for you!");
            }
            //if the file already exists and the user isn't in it, add them
            else {
                //checks the file to see if the user is there
                para = [filename, user];
                var x = bot.helper("fileContainsUser", para);
                //if the user isn't in the file, add them
                if (!x) {
                    //add the user to the party
                    var data = fs.readFileSync(filename, 'utf8').substring(1, fs.readFileSync(filename, 'utf8').length - 1);
                    data = data + " : " + user;
                    fs.writeFile(filename, JSON.stringify(data), e => {
                        if (e) throw e;
                    });
                    message.channel.send("That party already exists, so I added you to it!");
                }
                //if the user is in the file tell them so
                else {
                    message.channel.send("That party already exists, and you're already in it");
                }
            }
        }
        else {
            message.channel.send("Try naming your party");
        }
    }
}