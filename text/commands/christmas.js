module.exports = {
    name: 'christmas',
    secret: true,
    spam: false,
    description: "christmas",
    execute(message, args, bot)
    {
        var date = new Date();

        if (date.getDay === 25 && date.getMonth() === 12)
        {
            message.channel.send('yes');
        }
        else
        {
            // Get today's date and time
            var today = new Date()
            var now = today.getTime();

            var countDownDate = new Date(`Dec 25, ${today.getFullYear()} 00:00:00`).getTime();

            // Find the distance between now and the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Display the result 
            message.channel.send(days + "d " + hours + "h " + minutes + "m " + seconds + "s (ish)");
        }
    }
}  