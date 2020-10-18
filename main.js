const Discord = require('discord.js');
const client = new Discord.Client();
const fs = require('fs');

const { token, testToken } = require('./config.json');

//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: true,
    token: token,
    prefix: '~',
    client: client,
    channelTypes: ['dm', 'text'],
    messageTypes: ['commands', 'generics', 'specials'],
    guildID: '752727453918691402',
    guild: undefined,
    jaspaDM: '754507044312317962',
    jaspaID: '130880023069589505',
    benID: '111579235059060736',
    mattID: '321665327845081089',
    readyRoleID: '754789734563315834',
    readyRole: undefined,
    imposterRoleID: '752728482433335357',
    imposterRole: undefined,
    gulagRoleID: '755905663565299852',
    gulagRole: undefined,
    memberRoleID: '752728384408256553',
    memberRole: undefined,
    sooners: new Discord.Collection,
    numReadySoon: 0,
    gulagYesVotes: 0,
    gulagNoVotes: 0,
    gulagVoters: [],
    gulaguy: undefined,
    gulaguyID: undefined,
    voteActive: false,
    votesNeeded: 3,
    voteMessage: undefined,
    proxyChat: false,
    proxyChannelID: '752727454358962247',
    proxyChannel: undefined,
    recentProxyChannel: undefined,
    readyBotChannelID: '759869338584612874',
    readyBotChannel: undefined,
    startHour: undefined,

    
    initialUpdates: function ()
    {
        this.guild = client.guilds.cache.get(this.guildID);
        this.readyRole = this.guild.roles.cache.get(this.readyRoleID);
        this.imposterRole = this.guild.roles.cache.get(this.imposterRoleID);
        this.gulagRole = this.guild.roles.cache.get(this.gulagRoleID);
        this.memberRole = this.guild.roles.cache.get(this.memberRoleID);
        this.proxyChannel = client.channels.cache.get(bot.proxyChannelID);

        bot.helper('updateNumReady', { numReady: bot.helper('numReady', 0) });

        this.readyBotChannel = client.channels.cache.get(bot.readyBotChannelID);
        this.startHour = new Date().getHours();

        this.helper('midnightReset', 0);
        this.helper('scanRAL', 0);
    },

    helper: function (name, params)
    {
        //check if the helper exists
        if (client.things.get('helpers').get(name) != undefined)
        {
            //run the helper
            var out = client.things.get('helpers').get(name).execute(params, this);

            if (out != undefined)
            {
                return out;
            }
        }
    }
}

//switches the variables to the test bot's stuff
if (bot.testbuild)
{
    bot.token = testToken;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '755291736871272490';
    bot.readyRoleID = '360182681943932930';
    bot.imposterRoleID = '756313923363405824';
    bot.gulagRoleID = '589261878383869962';
    bot.memberRole = '589261880862834688';
    bot.proxyChannelID = '754762580408533072';
    bot.readyBotChannelID = '754762580408533072';
}

client.things = new Discord.Collection();

//sets up the text and dm folders
bot.channelTypes.forEach(channelType =>
{
    bot.messageTypes.forEach(messageType =>
    {
        client.things.set(channelType + messageType, new Discord.Collection());

        var directory = './' + channelType + '/' + messageType + '/';

        const files = fs.readdirSync(directory).filter(file => file.endsWith('.js'));
        for (const file of files)
        {
            const command = require(directory + `${file}`);

            if (channelType + messageType === 'dmspecials' || channelType + messageType === 'textspecials')
            {
                client.things.get(channelType + messageType).set(command.id, command);
            }
            else
            {
                client.things.get(channelType + messageType).set(command.name, command);

                if (command.alt != undefined)
                {
                    client.things.get(channelType + messageType).set(command.alt, command);
                }
            }
        }
    })
});

//sets up the helper folder
client.things.set('helpers', new Discord.Collection());

var directory = './helpers/';

const files = fs.readdirSync(directory).filter(file => file.endsWith('.js'));
for (const file of files)
{
    const command = require(directory + `${file}`);

    client.things.get('helpers').set(command.name, command);

    if (command.alt != undefined)
    {
        client.things.get('helpers').set(command.alt, command);
    }
}



client.once('ready', () =>
{
    bot.initialUpdates();

    bot.helper('checkRAL', 0);

    console.log('Readybot 2 confirmed');

    if (bot.testbuild)
    {
        console.log('<test build>');
    }
});


client.on('message', message =>
{
    //ignore messages from itself
    if (message.author.bot) return;

    if (message.channel.type === 'dm')
    {
        var userID = message.author.id;

        //special jaspa treatment
        if (userID === bot.jaspaID)
        {
            //send to jaspa
            client.things.get('dmspecials').get(userID).execute(message, bot);
        }
        //everybody that's not me
        else
        {
            //other special treatment
            if (client.things.get('dmspecials').get(userID) != undefined) //if they are on the list
            {
                client.things.get('dmspecials').get(userID).execute(message, bot); //do their special code
            }

            bot.helper('relayMsgToJaspa', { message: message });
        }
    }
    else if (message.channel.type === 'text')
    {
        //commands
        if (message.content.startsWith(bot.prefix))
        {
            //splits the message into words after the prefix
            const args = message.content.slice(bot.prefix.length).split(/ +/);

            //the first word in the message following the prefix
            const command = args.shift().toLowerCase();

            //check if the command is in the list
            if (client.things.get('textcommands').get(command) != undefined)
            {
                //run the command
                client.things.get('textcommands').get(command).execute(message, args, bot);


                //check if the command is in the readybot channel, and if its a spammy command
                if (message.channel.id != bot.readyBotChannelID && client.things.get('textcommands').get(command).spam != false)
                {
                    message.channel.send('ayo, consider using the readybot channel (just an idea tho)');
                }
            }
            //if the command is not in the list
            else
            {
                //react accordingly
                message.channel.send('That\'s not a command, bucko');
            }
        }
        //not commands
        else
        {
            if (bot.proxyChat && message.content != null)
            {
                bot.helper('relayMsgToJaspa', { message: message });
            }

            //send to special people
            if (client.things.get('textspecials').get(message.member.id) != undefined) //if they are on the list
            {
                client.things.get('textspecials').get(message.member.id).execute(message, bot); //do their special code
            }

            client.things.get('textgenerics').get("nicebot").execute(message, bot);
        }
    }
});

client.login(bot.token);