module.exports = {
    name: 'react',
    secret: false,
    description: "Reacts the given number to the given message",
    execute(params, bot)
    {
        num = params.num;
        message = params.message;
        
        if (num === 0)
        {
            message.react('\u0030\u20E3');
        }
        else if (num === 1)
        {
            message.react('\u0031\u20E3');
        }
        else if (num === 2)
        {
            message.react('\u0032\u20E3');
        }
        else if (num === 3)
        {
            message.react('\u0033\u20E3');
        }
        else if (num === 4)
        {
            message.react('\u0034\u20E3');
        }
        else if (num === 5)
        {
            message.react('\u0035\u20E3');
        }
        else if (num === 6)
        {
            message.react('\u0036\u20E3');
        }
        else if (num === 7)
        {
            message.react('\u0037\u20E3');
        }
        else if (num === 8)
        {
            message.react('\u0038\u20E3');
        }
        else if (num === 9)
        {
            message.react('\u0039\u20E3');
        }
        else if (num === 10)
        {
            message.react('\u0031\u20E3')
            message.react('\u0030\u20E3')
        }
        else
        {
        }
    }
}  