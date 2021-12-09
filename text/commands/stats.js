module.exports = {
    name: 'stats',
    secret: true,
    spam: false,
    description: "takes a number to count relative to and a way to compare numbers, then returns how many songs relate in that way",
    execute(message, args, bot)
    {
        let param = args.shift();
        let score = args.shift();

        if (score == undefined) 
        {
            score = param;
            param = undefined;
        }

        let node = bot.valuesHead;
        let count = 0;
        while (node != null) 
        {
            if ((param == "<=" && node.value <= score) ||
                (param == "<" && node.value < score) ||
                (param == undefined && node.value == score) ||
                (param == ">" && node.value > score) ||
                (param == ">=" && node.value >= score))
            {
                count++;
            }
            node = node.next;
        }

        if (param == undefined)
        {
            message.channel.send(count + " songs have a value of " + score);
        }
        else
        {
            message.channel.send(count + " songs " + param + " " + score);
        }
    }
}  