const Discord = require('discord.js');

const client = new Discord.Client();

/**
 * the prefix to trigger commands
 */
const prefix = '~';

/**
 * the id of the ready role
 */
const readyRoleID = '754789734563315834';

/**
 * the id of the gulag role
 */
const gulagRoleID = '755905663565299852';


/**
 * the id of the member role
 */
const memberRoleID = '752728384408256553';

/**
 * the id of the imposter role
 */
const imposterRoleID = '752728482433335357';

/**
 * whether or not the bot should be proxying messages
 */
var proxyChat = false;

/**
 * the id of channel the bot should proxy into by default
 */
const defaultProxyID = '752727454358962247';

/**
 * the channel that the bot will proxy message into
 */
var proxyChannel;

/**
 * the most recent channel the bot has proxied a message from
 */
var recentProxyChannel;

const jaspaDM = '754507044312317962';

const jaspaID = '130880023069589505';
const andyID = '163124556540805120';
const ethanID = '367706124926844929';
const nikkiID = '421762252530515981';

/**
 * id of the person on trial for gulag
 */
var gulaguyID;
var gulaguy;
var voteActive = false;
var votesNeeded = 3;
var gulagVoters = [];
var gulagYesVotes = 0;
var gulagNoVotes = 0;
var voteMessageID;
var voteChannelID;


client.once('ready', () =>
{

    client.user.setActivity('do ' + prefix + 'help');
    proxyChannel = client.channels.cache.get(defaultProxyID)

    console.log('Ready Bot is online');
})

client.on('message', message =>
{
    //checks if the command is from a dm
    if (message.channel.type === 'dm')
    {
        if (message.author.bot) return;



        //jaspa commands
        if (message.author.id === jaspaID)
        {
            let specialPref = '\\';

            //run special commands for jaspa
            if (message.content.startsWith(specialPref))
            {
                const args = message.content.slice(specialPref.length).split(/ +/);
                var command = args.shift().toLowerCase();

                if (command === 'proxychat')
                {
                    command = args.shift();

                    if (command != undefined)
                    {
                        command = command.toLowerCase();
                    }

                    //if proxychat is followed by nothing, just toggle it
                    if (command === undefined)
                    {
                        proxyChat = !proxyChat;

                        if (proxyChat)
                        {
                            message.channel.send('Proxy Chat turned on');
                        }
                        else
                        {
                            message.channel.send('Proxy Chat turned off');
                        }
                    }
                    //otherwise try to set the secondary command to be the channel to send to
                    else
                    {
                        if (client.channels.cache.get(command) != null)
                        {
                            proxyChannel = client.channels.cache.get(command);

                            if (proxyChannel.type === 'text')
                            {
                                message.channel.send('ProxyChat set to ' + proxyChannel.name);
                            }
                            else if (proxyChannel.type === 'dm')
                            {
                                message.channel.send('ProxyChat set to that person');
                            }
                        }
                        else
                        {
                            message.channel.send('Unable to find that channel.');
                        }
                    }
                }
            }
            //react to not commands
            else
            {
                //send what i say through the bot (proxychat)
                if (proxyChat && message.content != null)
                {
                    proxyChannel.send(message.content);
                }
                else
                {
                    message.channel.send('❤️');
                }
            }
        }
        //everybody thats not jaspa
        if (message.author.id != jaspaID)
        {
            //andy commands
            if (message.author.id === andyID)
            {
                message.channel.send('E');
            }
            else
            {
                // message.channel.send('Don\'t dm me, that\'s weird');
            }

            let dm = client.channels.cache.get(jaspaDM)

            if (dm != null && message.content != null)
            {
                dm.send('[' + message.channel.id + '] ' + message.author.username + ' dm\'d me: \n' + message.content);
            }
            else if (dm == null && message.content != null)
            {
                console.log('[' + message.channel.id + '] ' + message.author.username + ' dm\'d me: \n' + message.content);
            }
        }
    }
    //checks if the commmand is from a text channel
    else if (message.channel.type === 'text')
    {
        if (message.author.bot) return;

        if (message.author.id === ethanID)
        {
            // message.react('🇧');
            // message.react('🇺');
            // message.react('🇨');
            // message.react('🇰');
            // message.react('🇴');


            // message.react('🤮');
        }
        else if (message.author.id === nikkiID)
        {
            if (message.content.toLowerCase().includes('whores'))
            {
                message.channel.send('*wores');
            }
            else if (message.content.toLowerCase().includes('whore'))
            {
                message.channel.send('*wore');
            }
        }

        if (proxyChat && message.content != null)
        {
            if (message.channel != recentProxyChannel)
            {
                client.channels.cache.get(jaspaDM).send(message.channel.name.toUpperCase() + ' [' + message.channel.id + ']\n' +
                    message.author.username + ': ' + message.content);

                recentProxyChannel = message.channel;
            }
            else
            {
                client.channels.cache.get(jaspaDM).send(message.author.username + ': ' + message.content);
            }

        }


        //commands and stuff
        if (!message.content.startsWith(prefix)) return;

        const args = message.content.slice(prefix.length).split(/ +/);
        const command = args.shift().toLowerCase();

        if (command === 'ping') //pings the bot
        {
            message.channel.send('pong idiot');
        }
        else if (command === 'ready')
        {
            //checks how many people are ready (the # of people with the ready role)
            let numReady = message.guild.roles.cache.get(readyRoleID).members.size;

            //only ready the person up if there are less than 10 people.
            if (numReady >= 10)
            {
                message.channel.send("10 people are already ready")
            }
            else
            {
                //sets the user to be the person doing the command
                let member = message.member;

                //sets the ready role 
                let role = message.guild.roles.cache.get(readyRoleID);


                //check if the person is already ready
                let isReady = false;
                message.member.roles.cache.forEach(aRole =>
                {
                    if (!isReady)
                    {
                        isReady = aRole === role;
                    }
                })

                //begins to build the string that says the person is ready
                let strReady = member.displayName + ' is ';

                if (isReady)
                {
                    //continue building the string that says the person is ready
                    strReady = strReady + 'super ';
                }
                else
                {
                    //adds the ready role to the user
                    member.roles.add(role);

                    //increments how many people are ready
                    numReady += 1;
                }

                //finish building the string that says the person is ready
                strReady = strReady + 'ready! ';

                //builds the string saying how many are ready
                let strNumReady = numReady;

                if (numReady === 1)
                {
                    strNumReady = strNumReady + ' person is ready!';
                }
                else
                {
                    strNumReady = strNumReady + ' people are ready!';
                }

                //send a message saying the person is ready, and how many people are ready
                message.channel.send(strReady + strNumReady);


                //pings the ready role if 10 people are ready
                if (numReady === 10)
                {
                    message.channel.send(`<@&${readyRoleID}>` + ' 10 people are ready!');
                }

                //updates to say the bot is playing how many people are ready
                client.user.setActivity(strNumReady);
            }
        }
        else if (command === 'notready')
        {
            //sets the user to be the person doing the command
            let member = message.member;

            //sets the ready role 
            let role = message.guild.roles.cache.get(readyRoleID);

            //check if the person is ready
            let isReady = false;
            message.member.roles.cache.forEach(aRole =>
            {
                if (!isReady)
                {
                    isReady = aRole === role;
                }
            })

            //checks how many are ready
            numReady = message.guild.roles.cache.get(readyRoleID).members.size;

            //begins to build the string that says the person is not ready
            let strReady = member.displayName + ' is ';

            if (isReady)
            {
                //removes the ready role from the user
                member.roles.remove(role);

                //decreases the number of people ready by one
                numReady -= 1;
            }
            else
            {
                //continue building the string that says the person is not ready
                strReady = strReady + 'still ';
            }

            //finish building the string that says the person is not ready
            strReady = strReady + 'not ready! ';


            //builds the string saying how many are ready
            let strNumReady = numReady;

            if (numReady === 1)
            {
                strNumReady = strNumReady + ' person is ready!';
            }
            else
            {
                strNumReady = strNumReady + ' people are ready!';
            }

            //send a message saying the person is not ready, and how many people are ready
            message.channel.send(strReady + strNumReady);

            //updates to say the bot is playing how many people are ready
            client.user.setActivity(strNumReady);
        }
        else if (command === 'readycheck')
        {
            //check how many people are ready
            let numReady = message.guild.roles.cache.get(readyRoleID).members.size;

            //display how many people are ready
            if (numReady === 1)
            {
                message.channel.send('1 person is ready');
            }
            else
            {
                message.channel.send(numReady + ' people are ready');
            }
        }
        else if (command === 'reset')
        {
            if (message.member.hasPermission('MANAGE_ROLES'))
            {
                //sets the ready role 
                let role = message.guild.roles.cache.get(readyRoleID);

                role.members.forEach(member =>
                {
                    member.roles.remove(role);
                })

                message.channel.send('Nobody is ready!');

                //updates to say the bot is playing how many people are ready
                client.user.setActivity('Nobody is ready!');
            }
            else
            {
                message.channel.send('You need the manage roles permission to use this');
            }

        }
        else if (command === 'readylist')
        {
            //check how many people are ready
            let numReady = message.guild.roles.cache.get(readyRoleID).members.size;

            if (numReady === 0)
            {
                message.channel.send('Nobody is ready');
            }
            else
            {
                //sets the ready role 
                let role = message.guild.roles.cache.get(readyRoleID);

                //generates the first line of the list
                let list = 'The following ';

                if (numReady === 1)
                {
                    list = list + ' person is';
                }
                else
                {
                    list = list + numReady + ' people are';
                }

                list = list + ' ready:\n';

                //adds each ready person to the list
                role.members.forEach(member =>
                {
                    list = list + member.displayName + '\n';
                })

                //sends the list
                message.channel.send(list);
            }
        }
        else if (command === 'e')
        {
            message.channel.send(
                'EEEEE\n' +
                'E\n' +
                'EEE\n' +
                'E\n' +
                'EEEEE\n');
        }
        else if (command === 'gulag')
        {
            //check that there is one person listed
            if (message.mentions.members.size === 1)
            {
                //if there is already a vote active
                if (voteActive)
                {
                    message.channel.send('We must finish ' + gulaguy.displayName + '\'s trial first. ');
                }
                //if there is no vote active
                else
                {
                    //sets the person being sent to the gulag
                    gulaguy = message.mentions.members.first();
                    gulaguyID = gulaguy.id;

                    //sets the imposter role 
                    let imposterRole = message.guild.roles.cache.get(imposterRoleID);

                    //check if they are an imposter
                    let isImposter = false;

                    gulaguy.roles.cache.forEach(aRole =>
                    {
                        if (!isImposter)
                        {
                            isImposter = aRole === imposterRole;
                        }
                    })

                    if (isImposter)
                    {
                        message.channel.send('I couldn\'t send them to the gulag if I wanted to.');
                    }
                    else
                    {
                        //declare an active vote
                        voteActive = true;

                        //set the gulagrole 
                        let gulagRole = message.guild.roles.cache.get(gulagRoleID);

                        //check if they are in the gulag
                        let isGulag = false;
                        gulaguy.roles.cache.forEach(aRole =>
                        {
                            if (!isGulag)
                            {
                                isGulag = aRole === gulagRole;
                            }
                        })


                        //if they are already in the gulag
                        if (isGulag)
                        {
                            message.channel.send(gulaguy.displayName + ' is already in the gulag. Do we want to release them?\n' +
                                'Yes: ' + gulagYesVotes + ' No: ' + gulagNoVotes).then(sent =>
                                {
                                    voteMessageID = sent.id;
                                    voteChannelID = sent.channel.id;
                                });
                        }
                        //if they arent in the gulag
                        else
                        {
                            message.channel.send(gulaguy.displayName + ' is not yet in the gulag. Do we want to send them?\n' +
                                'Yes: ' + gulagYesVotes + ' No: ' + gulagNoVotes).then(sent =>
                                {
                                    voteMessageID = sent.id;
                                    voteChannelID = sent.channel.id;
                                });

                        }
                    }
                }
            }
            else if (message.mentions.members.size === 0)
            {
                message.channel.send('Mention somebody, and we shall send them to the gulag.');
            }
            else
            {
                message.channel.send('One at a time!');
            }
        }
        else if (command === 'yes' || command === 'no' || command === 'perhaps')
        {
            if (!voteActive)
            {
                message.channel.send('There is no active trial.');
            }
            else
            {
                //check if they have already voted
                let hasVoted = gulagVoters.indexOf(message.member.id) != -1;

                //sets the gulag role 
                let gulagRole = message.guild.roles.cache.get(gulagRoleID);

                //check if they are in the gulag
                let inGulag = false;

                message.member.roles.cache.forEach(aRole =>
                {
                    if (!inGulag)
                    {
                        inGulag = aRole === gulagRole;
                    }
                })

                //checks if they are a valid voter
                if (!hasVoted && !inGulag)
                {
                    //check if gulaguy is in the gulag
                    let gulaguyInGulag = false;

                    gulaguy.roles.cache.forEach(aRole =>
                    {
                        if (!gulaguyInGulag)
                        {
                            gulaguyInGulag = aRole === gulagRole;
                        }
                    })

                    //vote
                    if (command === 'yes')
                    {
                        gulagYesVotes++;

                        gulagVoters.push(message.member.id);
                    }
                    else if (command === 'no')
                    {
                        gulagNoVotes++;

                        gulagVoters.push(message.member.id);
                    }
                    else if (command === 'perhaps')
                    {
                        gulagYesVotes += 0.5;
                        gulagNoVotes += 0.5;

                        gulagVoters.push(message.member.id)
                    }


                    if (gulagYesVotes >= votesNeeded || gulagNoVotes >= votesNeeded)
                    {
                        if (gulagYesVotes > gulagNoVotes)
                        {
                            //sets the member role
                            let memberRole = message.guild.roles.cache.get(memberRoleID);

                            //flip gulaguy to/from gulag
                            if (gulaguyInGulag)
                            {
                                gulaguy.roles.add(memberRole);
                                gulaguy.roles.remove(gulagRole);

                                message.channel.send(gulaguy.displayName + ' has been released from the gulag.');
                            }
                            else if (!gulaguyInGulag)
                            {
                                gulaguy.roles.add(gulagRole);
                                gulaguy.roles.remove(memberRole);

                                message.channel.send(gulaguy.displayName + ' has been sent to the gulag.');
                            }

                            //end vote
                            voteActive = false;
                        }
                        else if (gulagNoVotes > gulagYesVotes)
                        {
                            if (gulaguyInGulag)
                            {
                                message.channel.send(gulaguy.displayName + ' will remain in the gulag.');
                            }
                            else
                            {
                                message.channel.send(gulaguy.displayName + ' will not be sent to the gulag.');
                            }

                            //end vote
                            voteActive = false;
                        }
                        else
                        {
                            message.channel.send('Tie. There will be no change.');

                            //end vote
                            voteActive = false;
                        }
                    }

                    let tempYes = gulagYesVotes;
                    let tempNo = gulagNoVotes;

                    //update vote message to display current vote tallies
                    client.channels.cache.get(voteChannelID).messages.fetch(voteMessageID)
                        .then(voteMsg =>
                        {
                            var index = voteMsg.content.indexOf("\n");
                            voteMsg.edit(voteMsg.content.substring(0, index) + '\nYes: ' + tempYes + ' No: ' + tempNo);
                        });

                    //if the vote ended, clear the stuff
                    if (!voteActive)
                    {
                        gulagYesVotes = 0;
                        gulagNoVotes = 0;
                        gulagVoters = [];
                    }
                }
                else if (inGulag)
                {
                    message.channel.send('You may not vote from the gulag.');
                }
                else
                {
                    message.channel.send('You already voted. Voter fraud is punishable by gulag trial. ');
                }
            }
        }
        else if (command === 'end')
        {
            //sets the imposter role 
            let imposterRole = message.guild.roles.cache.get(imposterRoleID);

            //check if they are an imposter
            let isImposter = false;

            message.member.roles.cache.forEach(aRole =>
            {
                if (!isImposter)
                {
                    isImposter = aRole === imposterRole;
                }
            })

            if (isImposter)
            {
                if (voteActive)
                {
                    //sets the gulag role 
                    let gulagRole = message.guild.roles.cache.get(gulagRoleID);

                    //check if gulaguy is in the gulag
                    let gulaguyInGulag = false;

                    gulaguy.roles.cache.forEach(aRole =>
                    {
                        if (!gulaguyInGulag)
                        {
                            gulaguyInGulag = aRole === gulagRole;
                        }
                    })

                    if (gulagYesVotes > gulagNoVotes)
                    {
                        //sets the member role
                        let memberRole = message.guild.roles.cache.get(memberRoleID);

                        //flip gulaguy to/from gulag
                        if (gulaguyInGulag)
                        {
                            gulaguy.roles.add(memberRole);
                            gulaguy.roles.remove(gulagRole);

                            message.channel.send(gulaguy.displayName + ' has been released from the gulag.');
                        }
                        else if (!gulaguyInGulag)
                        {
                            gulaguy.roles.add(gulagRole);
                            gulaguy.roles.remove(memberRole);

                            message.channel.send(gulaguy.displayName + ' has been sent to the gulag.');
                        }

                        //end vote
                        voteActive = false;
                    }
                    else if (gulagNoVotes > gulagYesVotes)
                    {
                        if (gulaguyInGulag)
                        {
                            message.channel.send(gulaguy.displayName + ' will remain in the gulag.');
                        }
                        else
                        {
                            message.channel.send(gulaguy.displayName + ' will not be sent to the gulag.');
                        }

                        //end vote
                        voteActive = false;
                    }
                    else
                    {
                        message.channel.send('Tie. There will be no change.');

                        //end vote
                        voteActive = false;
                    }

                    //if the vote ended, clear the stuff
                    if (!voteActive)
                    {
                        gulagYesVotes = 0;
                        gulagNoVotes = 0;
                        gulagVoters = [];
                    }
                }
                else
                {
                    message.channel.send('There is no active trial. ');
                }
            }
            else 
            {
                message.channel.send('Only Imposters can force a vote to end.');
            }
        }
        else if (command === 'help')
        {
            message.channel.send(
                prefix + 'ping: pings the bot\n' +
                prefix + 'ready: declares yourself ready\n' +
                prefix + 'notready: declares yourself not ready\n' +
                prefix + 'readycheck: checks how many people are ready\n' +
                prefix + 'reset: resets everyone back to not ready (only usable by people who can manage roles)\n' +
                prefix + 'readylist: displays the people who are ready');

        }
        else
        {
            message.channel.send('That\'s not a command, bucko');
        }
    }
})

client.login('NzU0NDk4NTEyMzU5NjUzNDY2.X11nfw.8jxS9x8Vo2D1zc_58g3x5mc7YuU');

