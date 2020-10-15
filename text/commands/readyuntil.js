//tweaked from Ben's Readyat Code

const { Collection } = require("discord.js");
const { errorMonitor } = require("stream");

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

function parseTime(timeString) {
	let time;
	let matches;
	
	/* normal time format */
	if(matches = /^(\d{1,2})(?::(\d{2}))?(?:\s*(am|pm))?$/.exec(timeString)) {
		time = {
			hour: Number(matches[1]),
			minute: Number(matches[2])
		}

		/* if the time is greater than 12, use miltime instead */
		if(time.hour > 12)
			time = null;
		else {
			if(!time.minute)
				time.minute = 0;

			let meridian = matches[3];

			if(meridian) {
				if(meridian == 'pm' && time.hour != 12)
					time.hour += 12;
			} else {
				let currentTime = new Date();

				/* if the current time is later than the time requested, add 12 hours */
				let flipMeridian = currentTime.getHours() % 12 > time.hour ||
									(currentTime.getHours() % 12 == time.hour && currentTime.getMinutes() >= time.minute);
				let isPm = currentTime.getHours() >= 12;
				/* ^ is XOR */
				if(isPm ^ flipMeridian) {
					time.hour += 12;
				}
			}

			time.hour %= 24;
		}
	}
	
	/* military time format */
	if(!time && (matches = /^(\d{2}):?(\d{2})$/.exec(timeString))) {
		time = {
			hour: Number(matches[1]),
			minute: Number(matches[2])
		}
	}

	if(!time)
		return null;

	if(time.hour >= 24)
		return null;
	
	if(time.minute >= 60)
		return null;

	return time;
}

function getTimeString(time) {
	let meridian = (time.hour >= 12)? 'pm' : 'am';
	let hourStr = time.hour % 12;

	if(hourStr == '0')
		hourStr = '12';
	
	return `${hourStr}:${String(time.minute).padStart(2, '0')}${meridian}`;
}