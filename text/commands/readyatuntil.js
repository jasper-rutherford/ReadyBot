//written by Josiah Vanevenhoven
module.exports = {
    name: 'readyau',
    param: 'time',
    secret: false,
	description: "Declares yourself as ready, but in the future, until future-er",
	execute(message, args, bot)
    {
        if (args.length == 2)
        {
            let raTime = parseTime(args[0]);
            let ruTime = parseTime(args[1]);
            arrT1 = [args[0]];
            arrT2 = [args[1]];
            if (raTime && ruTime)
            {
                //reads in the array of readyat times from the file
				bot.client.things.get('textcommands').get('readyat').execute(message, arrT1, bot);
				var RAUO = {
					id: message.member.id,
                    hour1: raTime.hour,
                    minute1: raTime.minute,
                    hour2: ruTime.hour,
                    minute2: ruTime.minute,
				}

                bot.RAUL.set(message.author.id, RAUO);
				bot.helpers('saveRAUL', 0);
            }
            else
            {
                message.channel.send("The times you sent were invalid");
            }
        }
        else
        {
            message.channel.send("Try sending two times in the format (HH:MM HH:MM)");
        }
    }
}

//parseTime function written by Ben Esposito
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