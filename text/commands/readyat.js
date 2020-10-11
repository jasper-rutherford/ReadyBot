const { Collection } = require("discord.js");
const { errorMonitor } = require("stream");

module.exports = {
    name: 'readyat',
    alt: 'readysoon',
    param: 'time',
    secret: false,
    description: "Declares yourself as ready, but in the future",
    execute(message, args, bot) {
		console.log(args);
		let arg = args.join(' ');
		
		if(!arg) {
			message.channel.send('Try entering a time');
		} else {
			let readyTime = this.parseTime(arg);

			if(readyTime) {
				if(arg == 'cancel') {
					if(bot.readySoon.get(message.member.id)) {
						message.channel.send(`${message.member.displayName} will no longer be ready at ${this.getTimeString(readyTime)}`);
						bot.readySoon.delete(message.member.id);
					}
				} else {
					message.channel.send(`I've got you marked down for ${this.getTimeString(readyTime)}`);

					/* -------- thanks Josiah ---------- */
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
						this.savetoFile(bot);
					}, delay);
					
				}

				bot.readySoon.set(message.member.id, [message.member.id, readyTime.hour, readyTime.minute]);
				this.savetoFile(bot);
			} else
				message.channel.send('Failed to parse time, try again');
		}
	},

	parseTime(timeString) {
		let matches = /(\d+)(?::(\d+))?(?:\s*(am|pm))?$/.exec(timeString);
		
		if(matches) {
			let time = {
				hour: Number(matches[1]),
				minute: Number(matches[2])
			}

			let meridian = matches[3];

			if(!time.minute)
				time.minute = 0;
			
			if(meridian) {
				if(meridian == 'pm')
					time.hour += 12;
			} else {
				let currentTime = new Date();

				if(!(currentTime.getHours() % 12 >= time.hour && currentTime.getMinutes() > time.minute))
					time.hour += 12;
			}

			time.hour %= 24;

			return time;
		} else
			return null;
	},

	getTimeString(time) {
		let meridian = (time.hour >= 12)? 'pm' : 'am';
		let hourStr = time.hour % 12;

		if(hourStr == '0')
			hourStr = '12';
		
		return `${hourStr % 12}:${String(time.minute).padStart(2, '0')}${meridian}`;
	},

    savetoFile: function (bot)
    {
        const FileSystem = require("fs");

        let wrapper =
        {
            readyAtList: []
        }

        //converts the collection of readyat times to an array of readyat times
        bot.readySoon.forEach(thing =>
        {
            wrapper.readyAtList.push(thing);
        });

        //saves the array to a file
        FileSystem.writeFile('readyAtList.json', JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    }
}