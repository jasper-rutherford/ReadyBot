// Authors: Ben Esposito, Jasper Rutherford, Josiah Vanevenhoven

const { Collection } = require("discord.js");
const { errorMonitor } = require("stream");

const { parseTime, getTimeString } = require('../../helpers/timeUtils');

module.exports = {
    name: 'readyat',
    alt: 'readysoon',
    param: 'time',
    secret: false,
	description: "Declares yourself as ready, but in the future",
	execute
}

function execute(message, args, bot) {
	let arg = args.join(' ');
	
	if(!arg)
		message.channel.send('Try entering a time');
	else if(arg == 'cancel') {
		if(bot.sooners.get(message.member.id)) {
			time = {
				hour: bot.sooners.get(message.member.id).hour,
				minute: bot.sooners.get(message.member.id).minute
			}

			message.channel.send(`${message.member.displayName} will no longer be ready at ${getTimeString(time)}`);
			
			bot.sooners.delete(message.member.id);
			bot.helper('saveRAL', 0);
		} else
			message.channel.send("You weren't on the list in the first place, nerd");
	} else {
		/* attempt to parse time string */

		let readyTime = parseTime(arg);

		if(readyTime) {
			message.channel.send(`I've got you marked down for ${getTimeString(readyTime)}`);
			
			//ensure that they are not currently ready
			bot.client.things.get('textcommands').get('notready').execute(message, 'auto', bot);

			var sooner = 
			{
				id: message.member.id,
				hour: readyTime.hour,
				minute: readyTime.minute,
				type: 'at'
			}

			message.react('✅');
			bot.sooners.set(sooner.id, sooner);
			bot.helper('saveRAL', 0);
		} else
			message.channel.send('Nah, try again');
	}
}
