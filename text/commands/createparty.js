// This code written by Josiah Vanevenhoven (Festive Neiso)
module.exports = {
    name: 'createparty',
    alt: 'create',
    secret: false,
    description: "Creates a game party",
    execute(message, args, bot) {
        //read the args and create a name
        var name = args.join(' ');
        var quote = name.includes('"') || name.includes('\\') || name.includes('*') || name.includes('_') || name.includes('`');
        if (args.length && !quote) {
            //create necessary variables
            const fs = require('fs');
            var user = [message.author.username, message.author.id];
            //create a file directory string that represents the party
            args.push('CREATE');
            var filename = bot.helper('constructFile', args);

            var wrapper = {
                userList: []
            }

            //if the file does not exist create it and add the user
            if (!fs.existsSync(filename)) {
                wrapper.userList.push(user);
                fs.writeFile(filename, JSON.stringify(wrapper), e => {
                    if (e) throw e;
                });
                message.channel.send("I've created a party called '" + name + "' for you!");
            }
            //if the file already exists and the user isn't in it, add them
            else {
                var data = JSON.parse(fs.readFileSync(filename));
                //checks the file to see if the user is there
                para = [filename, user];
                var x = bot.helper("fileContainsUser", para);
                //if the user isn't in the file, add them
                if (!x) {
                    data.userList.forEach(element =>
                    {
                        if (!element[0].includes(message.author.id))
                        {
                            var userArr = [element[0], element[1]];
                
                            wrapper.userList.push(userArr);
                        }
                    });
        
                    wrapper.userList.push(user);
                    //add the user to the party
                    fs.writeFile(filename, JSON.stringify(wrapper), e => {
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