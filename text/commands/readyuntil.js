//tweaked from Ben's Readyat Code

const { Collection } = require("discord.js");
const { errorMonitor } = require("stream");

const { parseTime, getTimeString } = require('../../helpers/timeUtils');

module.exports = {
    name: 'readyuntil',
    param: 'time',
    secret: false,
	description: "Declares yourself as ready until a certain time",
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

			message.channel.send(`${message.member.displayName} will no longer not be ready at ${getTimeString(time)}`);
			
			bot.sooners.delete(message.member.id);
			bot.helper('saveRAL', 0);
		} else
			message.channel.send(`You weren't not going to be ready in the first place, nerd`);
	} else {
		let readyTime = parseTime(arg);

		if(readyTime) {
			message.channel.send(`I've got you marked down until ${getTimeString(readyTime)}`);
			
			//ensure that they are not currently ready
			bot.client.things.get('textcommands').get('ready').execute(message, 'auto', bot);
			
			var sooner = 
			{
				id: message.member.id,
				hour: readyTime.hour,
                minute: readyTime.minute,
                type: 'until'
			}

			message.react('✅');
			bot.sooners.set(sooner.id, sooner);
			bot.helper('saveRAL', 0);
		} else
			message.channel.send(`Nah, try again`);
	}
}