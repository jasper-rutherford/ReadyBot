/* Author: Ben Esposito
 * Created: 10/11/20
 * Modified: 10/15/20
 * 
 * Description: Provides utilities for parsing and displaying time strings
 */

module.exports = {
	parseTime,
	getTimeString
}

/* @brief Parses a time string
 * 
 * @param timeString String representing a time
 * @return A json object containing the fields 'hour' and 'time', or null if the parsing failed
 */
function parseTime(timeString) {
	let time;
	let matches;
	
	/* meridian time format */
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