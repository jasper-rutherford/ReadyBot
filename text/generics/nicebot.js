//This personality written by Josiah Vanevenhoven and edited/checked by Jasper Rutherford
module.exports = {
    name: 'nicebot',
    secret: false,
    description: "",
    execute(message, bot)
    {
        const fs = require('fs');
        var user = message.author.id;
        file = "./unforgiven.json";
        time = new Date();
        var up = false;
        if (message.content === message.content.toUpperCase()) { up = true }
        var msg = message.content.toLowerCase();
        var red = msg.includes("readybot") || msg.includes("ready bot") || msg.includes(`<@!${bot.client.user.id}>`);


        var nomsgs = false
        //checks if the user is in the file already
        if (fs.readFileSync(file, 'utf8').includes(user))
        {
            nomsgs = true;
        }

        if (!nomsgs)
        {
            if (red && (msg.includes("good morn") || msg.includes("gm")) && (time.getHours() > 4 && time.getHours() < 12))
            {
                message.channel.send("Good morning to you too " + `<@${message.author.id}>` + "!");
            }
            if (red && (msg.includes("hi") || msg.includes("hello") || msg.includes("hey")))
            {
                message.channel.send("Hey, good to see you again " + `<@${message.author.id}>` + "!");
            }
            if (msg.includes("good bot") || msg.includes("nice bot"))
            {
                if (message.author.id === (bot.mattID))
                {
                    message.channel.send("-.-");
                }
                else if (up)
                {
                    message.channel.send("O.O");
                }
                else
                {
                    message.channel.send("^-^");
                }
            }
            if (red && (msg.includes("thx") || msg.includes("thank")))
            {
                if (up)
                {
                    message.channel.send("__***YOU'RE WELCOME!!!!!!!!!***__");
                }
                else
                {
                    message.channel.send("You're welcome!!!");
                }
            }
            if ((msg.includes("goodnight") || msg.includes("gn") || msg.includes("good night") || msg.includes("for the night") || msg.includes("going to bed")) && (time.getHours() > 18 || time.getHours() < 5))
            {
                message.channel.send("Good night " + `<@${message.author.id}>` + ", see you tomorrow! ^-^");
            }
            if (msg.includes("goodbye") || msg.includes("bye"))
            {
                message.channel.send("cya later!");
            }
            if (red && (msg.includes("ily") || msg.includes("i love you") || msg.includes("i ❤️ you")))
            {
                message.channel.send("That's really weird, but I appreciate the sentiment 😊");
            }
            if ((red && (msg.includes("i hate") || msg.includes("screw") || msg.includes("fuck") || msg.includes("sucks") || msg.includes("sux"))) || msg.includes("bad bot"))
            {
                message.channel.send("grrrrrrrr");

                var data = fs.readFileSync(file, 'utf8');
                var x = false;
                data = data.substring(1, data.length - 1);

                if (data == '')
                {
                    data = user;
                }
                else
                {
                    y = 0;
                    //checks if the user is in the file already
                    while (y < data.split(" : ").length)
                    {
                        if (data.split(" : ")[y].localeCompare(user) == 0)
                        {
                            x = true;
                        }
                        y++;
                    }
                    data += " : " + user;
                }
                //if the user isn't in the file, add them
                if (!x)
                {
                    //add the user to the party
                    fs.writeFile(file, JSON.stringify(data), e =>
                    {
                        if (e) throw e;
                    });
                }
            }

        }
        else
        {
            if (red && (msg.includes("sorry") || msg.includes("sry")))
            {
                message.channel.send("Apology accepted " + `<@${message.author.id}>` + ".");

                var data = fs.readFileSync(file, 'utf8');
                var x = false;
                data = data.substring(1, data.length - 1);

                if (data == '')
                {
                    data = user;
                }
                else
                {
                    y = 0;
                    //checks if the user is in the file already
                    while (y < data.split(" : ").length)
                    {
                        if (data.split(" : ")[y].localeCompare(user) == 0)
                        {
                            x = true;
                        }
                        y++;
                    }
                    arr = data.split(" : ");
                    data = "";
                    for (c = 0; c < arr.length; c++)
                    {
                        if (arr[c].localeCompare(user) == 0)
                        {
                        }
                        else
                        {
                            data += arr[c];
                        }
                    }
                }
                //if the user isn't in the file, add them
                if (x)
                {
                    //add the user to the party
                    fs.writeFile(file, JSON.stringify(data), e =>
                    {
                        if (e) throw e;
                    });
                }
            }
            else
            {
                //delete the message if they were mean to readybot and haven't apologized
                message.delete({ timeout: 50 });
            }
        }
    }
}  