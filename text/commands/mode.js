module.exports = {
    name: 'mode',
    secret: true,
    spam: false,
    description: "activates votemode",
    execute(message, args, bot)
    {
        let mode = args.shift();

        //normal mode
        if (mode == "normal") 
        {
            //set mode to normal
            bot.mode = "normal";
            bot.setTheme(bot.currentTheme);
        }
        //vote mode
        else if (mode == "vote")
        {
            //parse input args          
            let name = args.shift();

            //check if name exists
            let exists = false;
            bot.voteNames.forEach(item =>        
            {
                if (item == name)
                {
                    exists = true;
                }
            });

            if (exists)
            {
                bot.loadVoteScores(name);

                //send ballot
                bot.helpers('sendballot', bot.client.channels.cache.get(bot.spotifyChannel));
            }
            else
            {
                let min = args.shift();
                let max = args.shift();

                let from = args.shift();
                let bad = args.shift();
                let good = args.shift();


                //check that args are valid
                if (min < 0 && max > 0 && from != bot.barrelID)
                {
                    //set bot stuff
                    bot.voteName = name;
                    bot.voteNames.push(name);
                    bot.voteMin = min;
                    bot.voteMax = max;

                    bot.fromList = from;
                    bot.badList = bad;
                    bot.goodList = good;

                    //set bot mode to vote mode
                    bot.mode = "vote";

                    bot.initializeVoteScores();

                    //send ballot
                    bot.helpers('sendballot', bot.client.channels.cache.get(bot.spotifyChannel));
                }
                else 
                {
                    message.channel.send("❓");
                    console.log("invalid args sent in to \\mode vote");
                }
            }
        }
        //mode not recognized
        else 
        {
            console.log("invalid mode requested");
        }
    }
}  