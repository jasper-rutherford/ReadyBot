module.exports = {
    name: 'eval',
    secret: false,
    spam: false,
    description: "evaluates directly",
    execute(message, args, bot)
    {
        if (message.author.id === bot.jaspaID)
        {
            try
            {
                eval(message.content.substring(5))
            }
            catch
            {
                console.log(`oopsie, bad eval:\n[${message.content.substring(5)}]`)
            }
        }
    }
}