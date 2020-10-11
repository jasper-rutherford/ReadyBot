const Discord = require('discord.js');
const client = new Discord.Client();
const fs = require('fs');

const { token, testToken } = require('./config.json');

//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: false,
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
    readySoon: new Discord.Collection,
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


    relayMessageToJaspa: function (message)
    {
        var jaspaChannel = this.client.channels.cache.get(this.jaspaDM)

        if (message.channel.type === 'dm')
        {
            if (jaspaChannel === undefined)
            {
                if (message.channel != this.recentProxyChannel)
                {
                    console.log('DIRECT MESSAGE [' + message.channel.id + '] \n' + message.author.username + ': ' + message.content);
                    this.recentProxyChannel = message.channel;
                }
                else
                {
                    console.log(message.author.username + ': ' + message.content);
                }
            }
            else
            {
                if (message.channel != this.recentProxyChannel)
                {
                    jaspaChannel.send('DIRECT MESSAGE [' + message.channel.id + '] \n' + message.author.username + ': ' + message.content);
                    this.recentProxyChannel = message.channel;
                }
                else
                {
                    jaspaChannel.send(message.author.username + ': ' + message.content);
                }
            }
        }
        else if (message.channel.type === 'text')
        {
            if (message.channel != this.recentProxyChannel)
            {
                jaspaChannel.send(message.channel.name.toUpperCase() + ' [' + message.channel.id + '] \n' + message.member.displayName + ': ' + message.content);
                this.recentProxyChannel = message.channel;
            }
            else
            {
                jaspaChannel.send(message.member.displayName + ': ' + message.content);
            }
        }

    },

    initialUpdates: function ()
    {
        this.guild = client.guilds.cache.get(this.guildID);
        this.readyRole = this.guild.roles.cache.get(this.readyRoleID);
        this.imposterRole = this.guild.roles.cache.get(this.imposterRoleID);
        this.gulagRole = this.guild.roles.cache.get(this.gulagRoleID);
        this.memberRole = this.guild.roles.cache.get(this.memberRoleID);
        this.proxyChannel = client.channels.cache.get(bot.proxyChannelID);
        this.updateNumReady(this.numReady());
        this.readyBotChannel = client.channels.cache.get(bot.readyBotChannelID);
        this.startHour = new Date().getHours();
        this.resetAtMidnight();
        this.readReadySoonList(this);
    },


    numReady: function ()
    {
        this.guild.members.fetch()
            .then()
            .catch(console.error);

        return this.guild.roles.cache.get(this.readyRoleID).members.size;
    },

    updateNumReady: function (numReady)
    {
        //updates to say the bot is playing how many people are ready
        if (numReady === 0)
        {
            client.user.setActivity('Nobody is ready!');
        }
        else if (numReady === 1)
        {
            client.user.setActivity('1 person is ready!');
        }
        else 
        {
            client.user.setActivity(numReady + ' people are ready!');
        }
    },

    react: function (message, num)
    {
        if (num === 0)
        {
            message.react('\u0030\u20E3');
        }
        else if (num === 1)
        {
            message.react('\u0031\u20E3');
        }
        else if (num === 2)
        {
            message.react('\u0032\u20E3');
        }
        else if (num === 3)
        {
            message.react('\u0033\u20E3');
        }
        else if (num === 4)
        {
            message.react('\u0034\u20E3');
        }
        else if (num === 5)
        {
            message.react('\u0035\u20E3');
        }
        else if (num === 6)
        {
            message.react('\u0036\u20E3');
        }
        else if (num === 7)
        {
            message.react('\u0037\u20E3');
        }
        else if (num === 8)
        {
            message.react('\u0038\u20E3');
        }
        else if (num === 9)
        {
            message.react('\u0039\u20E3');
        }
        else if (num === 10)
        {
            message.react('\u0031\u20E3')
            message.react('\u0030\u20E3')
        }
        else
        {
        }
    },

    resetAtMidnight: function ()
    {
        var date = new Date();

        var hour = date.getHours();
        var minute = date.getMinutes();
        var seconds = date.getSeconds();

        var millis = (1000 * 60 * 60 * 24) - (1000 * 60 * 60 * hour) - (1000 * 60 * minute) - (1000 * seconds);


        var aBot = this;
        setTimeout(function ()
        {
            client.things.get('textcommands').get('reset').execute('auto', 'auto', aBot);
        }, millis);
    },

    readReadySoonList: function (bot)
    {
        var fileName = 'readyAtList.json';
        if (bot.testbuild)
        {
            fileName = 'testReadyAtList.json';
        }

        //reads in the array of readyat times from the file
        var data = JSON.parse(fs.readFileSync(fileName));

        //converts the array into the collection in the bot
        data.readyAtList.forEach(thing =>
        {
            bot.readySoon.set(thing[0], thing);
        });

        console.log('ReadySoon data has been read in');
    },

    checkReadyAtList: function (bot)
    {
        var date = new Date();

        var hour = date.getHours();
        var minute = date.getMinutes();

        bot.readySoon.forEach(thing =>
        {
            if (thing[1] === hour && thing[2] === minute)
            {
                bot.readyBotChannel.send(`Are ya ready yet, <@${message.member.id}>?`);
                bot.readySoon.delete(message.member.id);
                savetoFile(bot);
            }
        });
    },

    savetoFile: function (bot)
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
    },

    helper: function (name, params)
    {
        //check if the helper exists
        if (client.things.get('helpers').get(name) != undefined)
        {
            //run the helper
            client.things.get('helpers').get(name).execute(params, this);
        }
    }
}

//switches the variables to the test bot's stuff
if (bot.testbuild)
{
    bot.token = testToken;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '761050632291352609';
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

            bot.relayMessageToJaspa(message);
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
                bot.relayMessageToJaspa(message);
            }

            //send to special people
            if (client.things.get('textspecials').get(message.member.id) != undefined) //if they are on the list
            {
                client.things.get('textspecials').get(message.member.id).execute(message, bot); //do their special code
            }
        }
    }
});

client.login(bot.token);