module.exports = {
    name: 'template',
    secret: false,
    description: "a template for making helper functions",
    execute(params, bot)
    {
        var date = new Date();

        var hour = date.getHours();
        var minute = date.getMinutes();
        var seconds = date.getSeconds();

        var millis = (1000 * 60 * 60 * 24) - (1000 * 60 * 60 * hour) - (1000 * 60 * minute) - (1000 * seconds);

        //wait until midnight
        setTimeout(function ()
        {
            //loop every 24 hours
            setInterval(function ()
            {
                client.things.get('textcommands').get('reset').execute('auto', 'auto', aBot);
            }, 1000 * 60 * 60 * 24);
        }, millis);
    }
}  