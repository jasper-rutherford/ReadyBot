//This personality written by Josiah Vanevenhoven and edited/checked by Jasper Rutherford
module.exports = {
    name: 'nicebot',
    secret: false,
    description: "",
    execute(message, bot) {
        /*
        ------------------------------------------------------------------------------------------------------------------------
        READ: The constant userCurrScore represents the bot's opinion of the user based on words they use in messages about
        the bot. the red variable is true when the bot is mentioned within a meassage and false when it is not. If you want to weigh certain words more you can by simply adding to the statements that update the scores.
        I also expect that trigger words for score changes will be different from my default words. Once you have all your
        scoring data included and calibrated properly just add the the if statements that check for words adding the user's
        score as a variable that can change the bot's response to them. Have Fun!!!
        ------------------------------------------------------------------------------------------------------------------------
        */
        const fs = require('fs');
        var user = message.author.id;
        const file = "./text/generics/unforgiven.json";
        const scorefile = "./text/generics/userScores.json";
        time = new Date();
        var up = false;
        if (message.content === message.content.toUpperCase()) { up = true }
        var msg = message.content.toLowerCase();
        var red = msg.includes("readybot") || msg.includes("ready bot") || msg.includes(`<@!${bot.client.user.id}>`);

        //update user scores
        wrapperScores = {
            userScores: []
        }
        //find index of user if they already have a score, also read in the users to the array to be written
        var tempi = 0;
        var USI = -1;
        var scoredata = JSON.parse(fs.readFileSync(scorefile));
        scoredata.userScores.forEach(element => {
            if (element[0].localeCompare(user) == 0)
            {
                USI = tempi;
            }
            wrapperScores.userScores.push(element);
            tempi++;
        });
        //if the user does not exist add them and initialize their score at a value of 0
        if(USI == -1)
        {
            wrapperScores.userScores.push([user,0]);
        }
        //check each word if good add 1 if bad take 1 else nothing
        var goodbadword = message.content.split(" ");
        goodbadword.forEach(element => {
            if (element.localeCompare("positive") == 0 || element.localeCompare("good") == 0) {
                wrapperScores.userScores[USI][1] += 1;
            }
            else if (element.localeCompare("negative") == 0 || element.localeCompare("bad") == 0) {
                wrapperScores.userScores[USI][1] -= 1;
            }
        });

        //create a constant that contains the users current score for use in later statements
        const userCurrScore = wrapperScores.userScores[USI][1];

        //rewrite the scores file
        fs.writeFile(scorefile, JSON.stringify(wrapperScores), e => {
            if (e) throw e;
        });

        var nomsgs = false
        //checks if the user is in the file already
        if (fs.readFileSync(file, 'utf8').includes(user)) {
            nomsgs = true;
        }

        if (!nomsgs) {
            if (red && (msg.includes("good morn") || msg.includes("gm")) && (time.getHours() > 4 && time.getHours() < 12)) {
                message.channel.send("Good morning to you too " + `<@${message.author.id}>` + "!");
            }
            if (red && (msg.includes("hi") || msg.includes("hello") || msg.includes("hey"))) {
                message.channel.send("Hey, good to see you again " + `<@${message.author.id}>` + "!");
            }
            if (msg.includes("good bot") || msg.includes("nice bot")) {
                if (message.author.id === (bot.mattID)) {
                    message.channel.send("-.-");
                }
                else if (up) {
                    message.channel.send("O.O");
                }
                else {
                    message.channel.send("^-^");
                }
            }
            if (red && (msg.includes("thx") || msg.includes("thank"))) {
                if (up) {
                    message.channel.send("__***YOU'RE WELCOME!!!!!!!!!***__");
                }
                else {
                    message.channel.send("You're welcome!!!");
                }
            }
            if ((msg.includes("goodnight") || msg.includes("gn") || msg.includes("good night") || msg.includes("for the night") || msg.includes("going to bed")) && (time.getHours() > 18 || time.getHours() < 5)) {
                message.channel.send("Good night " + `<@${message.author.id}>` + ", see you tomorrow! ^-^");
            }
            if (msg.includes("goodbye") || msg.includes("bye")) {
                message.channel.send("cya later!");
            }
            if (red && (msg.includes("ily") || msg.includes("i love you") || msg.includes("i ❤️ you"))) {
                message.channel.send("That's really weird, but I appreciate the sentiment 😊");
            }
            if ((red && (msg.includes("i hate") || msg.includes("screw") || msg.includes("bitch") || msg.includes("fuck") || msg.includes("sucks") || msg.includes("sux"))) || msg.includes("bad bot")) {
                message.channel.send("grrrrrrrr");

                var data = JSON.parse(fs.readFileSync(file));
                var x = false;

                wrapper = {
                    unforgiven: []
                }

                if (data.unforgiven.length == 0) {
                    wrapper.unforgiven.push(user);
                }
                else {
                    y = 0;
                    //checks if the user is in the file already
                    while (y < data.unforgiven.length) {
                        if (data.unforgiven[y].localeCompare(user) == 0) {
                            x = true;
                        }
                        y++;
                    }
                    wrapper.unforgiven.push(user);
                }
                //if the user isn't in the file, add them
                if (!x) {
                    //add the user to the party
                    fs.writeFile(file, JSON.stringify(wrapper), e => {
                        if (e) throw e;
                    });
                }
            }

        }
        else {
            if (red && (msg.includes("sorry") || msg.includes("sry"))) {
                message.channel.send("Apology accepted " + `<@${message.author.id}>` + ".");

                var data = JSON.parse(fs.readFileSync(file));
                var x = false;

                wrapper = {
                    unforgiven: []
                }

                if (data.unforgiven.length == 0) {
                    wrapper.unforgiven.push(user);
                }
                else {
                    y = 0;
                    //checks if the user is in the file already
                    while (y < data.unforgiven.length) {
                        if (data.unforgiven[y].localeCompare(user) == 0) {
                            x = true;
                        }
                        y++;
                    }
                    for (c = 0; c < data.unforgiven.length; c++) {
                        if (data.unforgiven[c].localeCompare(user) != 0) {
                            wrapper.unforgiven.push(data[c]);
                        }
                    }
                }
                //if the user is in the file, remove them
                if (x) {
                    //remove the user from the party
                    fs.writeFile(file, JSON.stringify(wrapper), e => {
                        if (e) throw e;
                    });
                }
            }
            else {
                //delete the message if they were mean to readybot and haven't apologized
                message.delete({timeout:50});
            }
        }
    }
}  