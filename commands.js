const { getRandomInt } = require('./helpers')

const sendBallots = (bot, message, words) => {
    //get the channel
    let channel = bot.client.channels.cache.get(bot.spotifyChannel)

    //message 0: a line separating the above messages from these
    channel.send("-----------------------------------------------------")

    //message 1: the utility message
    let intervalMessage = ` | ${bot.queryInterval == "" ? "All Time" : "Past " + bot.queryInterval}`
    let message1Content = `[Current Mode: ${bot.getCurrentUtilityMode()}${intervalMessage}]`
    channel.send(message1Content).then(sent => {
        bot.multiUtilityMessage = sent
        bot.reactAll(bot.utilityEmojis, sent)
    })

    //message 2: the voting message - initializes to a bunch of dancers
    let dancers = ["💃", "🕺"]
    let message2Content = ``
    for (let i = 0; i < 8; i++) {
        message2Content += `${dancers[getRandomInt(2)]}  `
    }
    channel.send(message2Content).then(sent => {
        bot.multiVoteMessage = sent
        bot.reactAll(bot.getThemojis(), sent)
    })
}

const christmas = (bot, message, words) => {
    var date = new Date();

    if (date.getDay === 25 && date.getMonth() === 12) {
        message.channel.send('yes');
    }
    else {
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

const e = (bot, message, words) => {
    message.channel.send(
        'EEEEE\n' +
        'E\n' +
        'EEE\n' +
        'E\n' +
        'EEEEE\n');
}

const evaluate = (bot, message, words) => {
    try {
        eval(message.content.substring(`${bot.prefix}eval `.length))
    }
    catch
    {
        console.log(`oopsie, bad eval:\n[${message.content.substring(5)}]`)
    }
}

const ping = (bot, message, words) => {
    message.channel.send('pong');
}

const adminCommands = new Map([
    ['dm', new Map([
        ['eval', evaluate]
    ])],
    ['text', new Map([
        ['ballots', sendBallots],
        ['eval', evaluate]
    ])]
])

const nonAdminCommands = new Map([
    ['dm', new Map([
        ['christmas', christmas],
        ['e', e],
        ['ping', ping]
    ])],
    ['text', new Map([
        ['christmas', christmas],
        ['e', e],
        ['ping', ping]
    ])]
])

// add all non-admin commands to the admin commands map
for (let [key, value] of nonAdminCommands.get('dm')) {
    adminCommands.get('dm').set(key, value)
}

for (let [key, value] of nonAdminCommands.get('text')) {
    adminCommands.get('text').set(key, value)
}

module.exports = {
    adminCommands,
    nonAdminCommands, 
    sendBallots
}
