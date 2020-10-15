const { Collection } = require("discord.js");
const { errorMonitor } = require("stream");

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
		if(bot.readySoon.get(message.member.id)) {
			time = {
				hour: bot.readySoon.get(message.member.id)[1],
				minute: bot.readySoon.get(message.member.id)[2]
			}

			message.channel.send(`${message.member.displayName} will no longer be ready at ${getTimeString(time)}`);
			
			bot.readySoon.delete(message.member.id);
			savetoFile(bot);
		} else
			message.channel.send(`You weren't on the list in the first place, friend`);
	} else {
		let readyTime = parseTime(arg);

		if(readyTime) {
			message.channel.send(`I've got you marked down for ${getTimeString(readyTime)}`);

			/* -------- thanks Jasper & Josiah ---------- */
			let currentTime = new Date();
			let readyAtMillis = (readyTime.hour * 60 + readyTime.minute) * 60 * 1000;
			let currentMillis = ((currentTime.getHours() * 60 + currentTime.getMinutes()) * 60 + currentTime.getSeconds()) * 1000;

			let delay = readyAtMillis - currentMillis;
			
			if(delay < 0)
				delay += (24 * 60 * 60 * 1000);
			/* --------------------------------- */

			setTimeout(function() {
				message.channel.send(`Are ya ready yet, <@${message.member.id}>?`);
				bot.readySoon.delete(message.member.id);
				savetoFile(bot);
			}, delay);
			
			message.react('✅');
			bot.readySoon.set(message.member.id, [message.member.id, readyTime.hour, readyTime.minute]);
			savetoFile(bot);
		} else
			message.channel.send(`That's an invalid format, try again`);
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

		if(time.hour > 0 && time.hour <= 12) {
			if(!time.minute)
				time.minute = 0;

			let meridian = matches[3];

			if(meridian) {
				if(meridian == 'pm' && time.hour != 12)
					time.hour += 12;
			} else {
				let currentTime = new Date();

				/* if the current time is later than the time requested, flip meridian */
				let flipMeridian = currentTime.getHours() % 12 > time.hour ||
									(currentTime.getHours() % 12 == time.hour && currentTime.getMinutes() >= time.minute);
				let isPm = currentTime.getHours() >= 12;
				/* ^ is XOR */
				if(isPm ^ flipMeridian) {
					time.hour += 12;
				}
			}

			time.hour %= 24;
		} else {
			/* if the time is greater than 12, use miltime instead */
			time = null;
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

function savetoFile(bot)
{
	const FileSystem = require("fs");

	var wrapper =
	{
		readyAtList: []
	}

	//converts the collection of readyat times to an array of readyat times
	bot.readySoon.forEach(thing =>
	{
		wrapper.readyAtList.push(thing);
	});

	var fileName = 'readyAtList.json';
	if (bot.testbuild)
	{
		fileName = 'testReadyAtList.json';
	}

	//saves the array to a file
	FileSystem.writeFile(fileName, JSON.stringify(wrapper), e =>
	{
		if (e) throw e;
	});
}