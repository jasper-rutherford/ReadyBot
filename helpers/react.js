module.exports = {
    name: 'react',
    secret: false,
    description: "Reacts the given number to the given message",
	execute
}

const numberEmojis = [
	'\u0030\u20E3',
	'\u0031\u20E3',
	'\u0032\u20E3',
	'\u0033\u20E3',
	'\u0034\u20E3',
	'\u0035\u20E3',
	'\u0036\u20E3',
	'\u0037\u20E3',
	'\u0038\u20E3',
	'\u0039\u20E3'
]

function execute(params, bot)
{
	num = params.num;
	message = params.message;
	
	if(num <= 10) {
		numAsString = String(num);

		[...numAsString].forEach(char => {
			message.react(numberEmojis[Number(char)]);
		});
	}
}
