const Discord = require('discord.js');
const SpotifyWebApi = require('spotify-web-api-node');
const client = new Discord.Client();
const fs = require('fs');
const express = require('express');


const { tokenDiscord, testTokenDiscord, clientId, clientSecret } = require('./data/config.json');


const app = express();

//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: true,
    temp: true,
    tokenDiscord: tokenDiscord,
    prefix: '~',
    client: client,
    channelTypes: ['dm', 'text'],
    messageTypes: ['commands', 'generics', 'specials'],
    guildID: '752727453918691402',
    guild: undefined,
    jaspaDM: '754507044312317962',
    jaspaID: '130880023069589505',

    // credentials are optional /////this comment is from the template I built off of. Maybe it is true? Maybe not.
    spotifyApi: new SpotifyWebApi({
        clientId: clientId,
        clientSecret: clientSecret,
        redirectUri: 'http://localhost:8888/callback'
    }),
    spotifyUserID: '446i69szgjkow87ew9yjbbhnn',     //my user id

    barrelID: '4jCZqEM3AdWj3uSpjuY9IK',             //bottom of the barrel
    barrelHead: null,                               //stores bottom of the barrel as a linked list
    barrelTail: null,                               //head is first node, tail is last
    barrelLength: 0,
    barrelRead: false,              //whether or not the barrel has been read in yet

    listHead: null,                 //stores the song values list
    listTail: null,                 //head is first, tail is last
    listMap: new Discord.Collection,    //maps the song id's to their nodes in the list
    listLength: 0,                      //length of the list (should be the same as barrelLength?)

    themes: [],                                         //a list of all the themes
    currentTheme: '',                            //the current theme
    themeSet: false,                    //whether or not the theme has been set yet

    playlistIDs: [null, null, null, null, null, null], //list of playlist ID's for the theme

    clearing: false,        //stupid helper variable that makes sure we dont add things while things are being deleted

    // benID: '111579235059060736',
    // mattID: '321665327845081089',
    // readyRoleID: '754789734563315834',
    // readyRole: undefined,
    // imposterRoleID: '752728482433335357',
    // imposterRole: undefined,
    // gulagRoleID: '755905663565299852',
    // gulagRole: undefined,
    // memberRoleID: '752728384408256553',
    // memberRole: undefined,
    // sooners: new Discord.Collection,
    // numReadySoon: 0,
    // gulagYesVotes: 0,
    // gulagNoVotes: 0,
    // gulagVoters: [],
    // gulaguy: undefined,
    // gulaguyID: undefined,
    // voteActive: false,
    // votesNeeded: 3,
    // voteMessage: undefined,
    // proxyChat: false,
    // proxyChannelID: '752727454358962247',
    // proxyChannel: undefined,
    // recentProxyChannel: undefined,
    // readyBotChannelID: '759869338584612874',
    // readyBotChannel: undefined,
    // startHour: undefined,
    // parties: new Discord.Collection,


    initialUpdates: function ()
    {
        // console.log(spotifyApi.getTrack())
        // console.log(spotifyApi.getTrack());
        // const path = './data/songGroup.json'

        // //file exists
        // if (fs.existsSync(path))
        // {
        //     //reads in the name of the folder that contains the song group
        //     var data = JSON.parse(fs.readFileSync(fileName));
        // }
        // this.guild = client.guilds.cache.get(this.guildID);
        // this.readyRole = this.guild.roles.cache.get(this.readyRoleID);
        // this.imposterRole = this.guild.roles.cache.get(this.imposterRoleID);
        // this.gulagRole = this.guild.roles.cache.get(this.gulagRoleID);
        // this.memberRole = this.guild.roles.cache.get(this.memberRoleID);
        // this.proxyChannel = client.channels.cache.get(bot.proxyChannelID);

        // bot.helpers('updateNumReady', { numReady: bot.helpers('numReady', 0) });

        // this.readyBotChannel = client.channels.cache.get(bot.readyBotChannelID);
        // this.startHour = new Date().getHours();

        // this.helpers('midnightReset', 0);
        // this.helpers('scanRAL', 0);
        // this.helpers('scanParties', 0);
    },

    helpers: function (name, params)
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
    },

    loadSpot: function ()
    {
        //tell the bot that barrel/list need to be read/set
        bot.barrelRead = false;
        bot.themeSet = false;

        //read the base list of songs
        bot.readBarrelList();

        console.log("testbarrel");
        //get wrapper from file
        var fileName = './data/spotify/themes.json';
        var wrapper = JSON.parse(fs.readFileSync(fileName));

        //read in themes & current theme
        bot.currentTheme = wrapper.currentTheme;
        bot.themes = wrapper.themes;

        //set the theme to the current theme (aka what the theme was last time the bot saved)
        this.setTheme(this.currentTheme);
    },

    readBarrelList: function ()
    {
        var length = null;
        var loops = null;

        // Get the bottom of the barrel length
        bot.spotifyApi.getPlaylist(bot.barrelID)
            .then(function (data)
            {
                console.log("GOT A PLAYLIST BY ID: " + bot.barrelID);
                length = data.body.tracks.total;
                loops = length / 100;
                let chunkNum = 0;

                //read in all the songs from the playlist in sections (the api limits you to 100 at a time)
                for (var lcv = 0; lcv < loops; lcv++)
                {
                    // Get tracks 
                    bot.spotifyApi.getPlaylistTracks(bot.barrelID, {
                        offset: lcv * 100,
                        limit: 100,
                        fields: 'items'
                    })
                        .then(
                            function (data)
                            {
                                data.body.items.forEach(item =>         //read each song in the chunk into barrelList
                                {
                                    // console.log(val, item.track.name);

                                    //BARRELNODE DEFINITION
                                    let node =
                                    {
                                        name: item.track.name,
                                        id: item.track.id,
                                        value: null,
                                        prev: null,
                                        next: null,

                                        list: function ()
                                        {
                                            let num = 1;
                                            this.listing(num);
                                        },

                                        listing: function (num)
                                        {
                                            console.log(num, this.name);    //print the name

                                            if (this.next != null)
                                            {
                                                this.next.listing(num + 1); //list the next node
                                            }
                                        }
                                    }

                                    //if the list hasn't been created, make this node the first and last node
                                    if (bot.barrelHead == null)
                                    {
                                        bot.barrelHead = node;
                                        bot.barrelTail = node;
                                    }
                                    //otherwise, add this node to the end of the list
                                    else
                                    {
                                        node.prev = bot.barrelTail;     //sets the tail as the node's prev
                                        bot.barrelTail.next = node;     //sets the node as the tail's next
                                        bot.barrelTail = node;          //sets the node as the new tail
                                    }
                                });

                                chunkNum++;
                                let chunks = Math.ceil(loops);
                                // console.log("Read chunk " + chunkNum + "/" + chunks);

                                if (chunkNum == chunks)
                                {
                                    //tell the bot that the barrel has been read
                                    bot.barrelRead = true;

                                    //tell the console the same
                                    console.log("Read Barrel");

                                    //Try to sync the length of the list to the length of the barrel
                                    bot.syncLengths();
                                }
                            },
                            function (err)
                            {
                                console.log('Something went wrong!', err);
                            }
                        );

                }
            }, function (err)
            {
                console.log('Something went wrong!', err);
            });
    },

    newTheme: function (theme, playlistIDs)
    {
        console.log("Trying to make a new theme");

        //if theme already exists
        if (bot.themes.indexOf(theme) != -1)
        {
            console.log("Tried to add a theme that already exists.");
        }
        //if theme does not exist
        else
        {
            //add theme to list of themes
            bot.themes.push(theme);

            //clear the old map
            this.listMap.clear();

            //build the new list, each song defaults to a value of 0
            bot.buildNewList();

            //set the new theme
            bot.currentTheme = theme;

            //set the new playlist IDs
            for (let lcv = 0; lcv < 6; lcv++)
            {
                this.playlistIDs[lcv] = playlistIDs[lcv];
            }

            //save all the new stuff to files
            this.saveSpotify();
        }

        console.log("Made a new theme");
    },

    buildNewList: function ()
    {
        if (this.barrelHead == null)
        {
            console.log("Tried to make a new list, but barrelHead was null");
        }
        else
        {
            //clear the list from what was there
            bot.listHead = null;
            bot.listTail = null;

            //loop through the barrelList
            let barrelNode = bot.barrelHead;

            while (barrelNode != null)
            {
                //create the list node for this step
                //LISTNODE DEFINITION
                let listNode =
                {
                    name: barrelNode.name,
                    id: barrelNode.id,
                    value: 0,
                    prev: null,
                    next: null,

                    list: function ()
                    {
                        let num = 1;
                        this.listing(num);
                    },

                    listing: function (num)
                    {
                        console.log(num, this.name);    //print the name

                        if (this.next != null)
                        {
                            this.next.listing(num + 1); //list the next node
                        }
                    }
                }

                //add the node to the map
                bot.listMap.set(listNode.id, listNode);

                //if it is the first node in the loop 
                if (bot.listHead == null)
                {
                    //set the node to be head and tail
                    bot.listHead = listNode;
                    bot.listTail = listNode;
                }
                //otherwise
                else
                {
                    listNode.prev = bot.listTail;       //update the new node's previous 
                    bot.listTail.next = listNode;   //update the tail's next
                    bot.listTail = listNode;        //set the new node to be the tail
                }

                barrelNode = barrelNode.next;
            }
        }
    },

    saveSpotify: function ()
    {
        this.saveThemes();
        this.saveList();
    },

    saveList: function ()
    {
        var wrapper =
        {
            currentTheme: this.currentTheme,
            themes: this.themes
        }

        var fileName = './data/spotify/themes.json';

        //saves the stuff to a file
        fs.writeFile(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    },

    saveThemes: function ()
    {
        var wrapper =
        {
            playlistIDs: this.playlistIDs,
            songs: []
        }

        //converts the linked list of songs to an array
        let node = this.listHead;
        while (node != null)
        {
            wrapper.songs.push(
                {
                    name: node.name,
                    id: node.id,
                    value: node.value
                });

            node = node.next;
        }

        var fileName = './data/spotify/themes/' + this.currentTheme + '.json';

        //saves the thing to the file
        fs.writeFile(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    },

    setTheme: function (theme)
    {
        //check if theme exists
        if (this.themes.indexOf(theme) != -1)
        {
            console.log("Setting theme to", theme);

            //set the new theme
            bot.currentTheme = theme;

            //build the linked list from the current theme's file
            bot.buildListFromFile();

            //Tell the bot the theme has been set
            bot.themeSet = true;

            //tell the console the same
            console.log("Theme has been set to", theme);

            //Try to sync the length of the list to the length of the barrel
            bot.syncLengths();
        }
        else
        {
            console.log("theme does not exist");
        }
    },

    buildListFromFile: function ()
    {
        //clear the old map
        this.listMap.clear();

        //get wrapper from file
        var fileName = './data/spotify/themes/' + this.currentTheme + '.json';

        var wrapper = JSON.parse(fs.readFileSync(fileName));

        //set the new playlist IDs
        for (let lcv = 0; lcv < 6; lcv++)
        {
            this.playlistIDs[lcv] = wrapper.playlistIDs[lcv];
        }

        //clear the list from what was there
        bot.listHead = null;
        bot.listTail = null;

        //set the list length
        bot.listLength = wrapper.songs.length;

        //build the node list from the array in the wrapper
        for (let lcv = 0; lcv < wrapper.songs.length; lcv++)
        {
            //create the list node for this step
            //LISTNODE 
            let listNode =
            {
                name: wrapper.songs[lcv].name,
                id: wrapper.songs[lcv].id,
                value: wrapper.songs[lcv].value,
                prev: null,
                next: null,

                list: function ()
                {
                    let num = 1;
                    this.listing(num);
                },

                listing: function (num)
                {
                    console.log(num, this.name);    //print the name

                    if (this.next != null)
                    {
                        this.next.listing(num + 1); //list the next node
                    }
                },

                
            }

            //add the node to the map
            bot.listMap.set(listNode.id, listNode);

            //if it is the first node in the loop 
            if (bot.listHead == null)
            {
                //set the node to be head and tail
                bot.listHead = listNode;
                bot.listTail = listNode;
            }
            //otherwise
            else
            {
                listNode.prev = bot.listTail;   //update the new node's previous 
                bot.listTail.next = listNode;   //update the tail's next
                bot.listTail = listNode;        //set the new node to be the tail
            }
        }
    },

    //TODO: finish this
    syncLengths: function ()
    {
        if (bot.barrelRead && bot.themeSet)
        {
            //TODO: sync
            //check if anything has been added to the barrel 
            //loop through the barrel list
            let barrelNode = bot.barrelHead;
            while (barrelNode != null)
            {
                //check if the barrel node is in the list
                let contains = false;
                let listNode = bot.listHead;
                while (listNode != null)
                {
                    if (barrelNode.id == listNode.id)
                    {
                        contains = true;
                        listNode = null;
                    }
                    else
                    {
                        listNode = listNode.next;
                    }
                }


            }


            //check if anything has been removed from the barrel

            //reload the playlists
            this.reloadPlaylists();
        }
    },

    reloadPlaylists: function ()
    {
        //reload each playlist for this theme
        for (let lcv = 0; lcv < 6; lcv++)
        {
            //clear each playlist
            bot.clearing = true;

            console.log("boutta run the clear on \'" + this.playlistIDs[lcv] + "\"");
            this.clearPlaylist(this.playlistIDs[lcv]);

            console.log("waiting for clear to complete");

            let waitcount = 0;
            while (bot.clearing)
            {
                //waiting for async stuff
                waitcount++;
                if (waitcount % 100 == 0)
                {
                    // console.log("waiting")
                }
            }

            console.log("finished waiting for clear to complete");

            //determine how long each playlist should be
            let len = 0;
            if (lcv == 0)
            {
                len = 1;
            }
            else if (lcv == 1)
            {
                len = Math.floor(0.05 * this.barrelLength);
            }
            else
            {
                len = Math.floor(0.25 * (lcv - 1) * this.barrelLength);
            }

            console.log("Playlist " + lcv + " should have a length of [" + len + "]\n");

            //convert len songs into a list to be sent into the api (added to the playlist)
            let listNode = bot.listHead;

            let chunks = len / 100;
            let extra = len % 100;


            let tracks = [];
            for (let lcv2 = 0; lcv2 < len; lcv2++)
            {
                tracks.push("spotify:track:" + listNode.id);

                //add tracks to the playlist in chunks of 100, or add the last chunk when on the last loop
                if (tracks.length == 100 || lcv2 == len - 1)
                {
                    bot.spotifyApi.addTracksToPlaylist(this.playlistIDs[lcv], tracks)
                        .then(function (data)
                        {
                            console.log('Added tracks to playlist', lcv);
                        }, function (err)
                        {
                            console.log('Failed to add tracks to playlist', lcv);//, "\n", err);
                        });

                    tracks = [];
                }

                listNode = listNode.next;
            }
        }
    },

    clearPlaylist: function (id)
    {
        // Get the playlist length
        bot.spotifyApi.getPlaylist(id)
            .then(function (data)
            {
                console.log("attempting to clear", data.body.name);

                length = data.body.tracks.total;
                loops = length / 100;
                let tracksRemoved = 0;
                console.log("stuck 2");

                //read in all the songs from the playlist in sections (the api limits you to 100 at a time)
                for (var lcv = 0; lcv < loops; lcv++)
                {
                    console.log("stuck 3");
                    // Get tracks 
                    bot.spotifyApi.getPlaylistTracks(id, {
                        offset: lcv * 100,
                        limit: 100,
                        fields: 'items'
                    })
                        .then(function (data)
                        {
                            //the list of objects containing uri's to add onto
                            let tracks = [];

                            data.body.items.forEach(item =>
                            {
                                //convert each track to an object and add it to the list
                                tracks.push({ uri: item.track.uri });
                            });

                            //delete all the tracks covered by this chunk of the for loop
                            bot.spotifyApi.removeTracksFromPlaylist(id, tracks)
                                .then(function (data)
                                {
                                    //increase number of times tracks have been removed
                                    tracksRemoved++;

                                    //if all tracks have been removed
                                    if (tracksRemoved = Math.ceil(loops))
                                    {
                                        //tell the bot that clearing has finished
                                        bot.clearing = false;

                                        //tell the console the same
                                        console.log("cleared a playlist");
                                    }
                                }
                                );
                        },
                            function (err)
                            {
                                console.log('Something went wrong!', err);
                                bot.clearing = false;
                            }
                        );
        console.log("stuck 4");

                }
            }, function (err)
            {
                console.log('Something went wrong!', err);
                bot.clearing = false;
            });
    }
}

//switches the variables to the test bot's stuff
if (bot.testbuild)
{
    bot.tokenDiscord = testTokenDiscord;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '755291736871272490';
    // bot.readyRoleID = '360182681943932930';
    // bot.imposterRoleID = '756313923363405824';
    // bot.gulagRoleID = '589261878383869962';
    // bot.memberRole = '589261880862834688';
    // bot.proxyChannelID = '754762580408533072';
    // bot.readyBotChannelID = '754762580408533072';
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

    // bot.helpers('checkRAL', 0);
    client.user.setStatus('invisible')

    console.log('Readybot 3: Spotify Edition');

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
            // //other special treatment
            // if (client.things.get('dmspecials').get(userID) != undefined) //if they are on the list
            // {
            //     client.things.get('dmspecials').get(userID).execute(message, bot); //do their special code
            // }

            bot.helpers('relayMsgToJaspa', { message: message });
        }
    }
    else if (message.channel.type === 'text')
    {
        // //commands
        // if (message.content.startsWith(bot.prefix))
        // {
        //     //splits the message into words after the prefix
        //     const args = message.content.slice(bot.prefix.length).split(/ +/);

        //     //the first word in the message following the prefix
        //     const command = args.shift().toLowerCase();

        //     //check if the command is in the list
        //     if (client.things.get('textcommands').get(command) != undefined)
        //     {
        //         //run the command
        //         client.things.get('textcommands').get(command).execute(message, args, bot);


        //         //check if the command is in the readybot channel, and if its a spammy command
        //         if (message.channel.id != bot.readyBotChannelID && client.things.get('textcommands').get(command).spam != false)
        //         {
        //             message.channel.send('ayo, consider using the readybot channel (just an idea tho)');
        //         }
        //     }
        //     //if the command is not in the list
        //     else
        //     {
        //         //react accordingly
        //         message.channel.send('That\'s not a command, bucko');
        //     }
        // }
        //not commands
        // else
        // {
        // if (bot.proxyChat && message.content != null)
        // {
        //     bot.helpers('relayMsgToJaspa', { message: message });
        // }

        // //send to special people
        // if (client.things.get('textspecials').get(message.member.id) != undefined) //if they are on the list
        // {
        //     client.things.get('textspecials').get(message.member.id).execute(message, bot); //do their special code
        // }

        // client.things.get('textgenerics').get("nicebot").execute(message, bot);
        // }
    }
});
const scopes = [
    'ugc-image-upload',
    'user-read-playback-state',
    'user-modify-playback-state',
    'user-read-currently-playing',
    'streaming',
    'app-remote-control',
    'user-read-email',
    'user-read-private',
    'playlist-read-collaborative',
    'playlist-modify-public',
    'playlist-read-private',
    'playlist-modify-private',
    'user-library-modify',
    'user-library-read',
    'user-top-read',
    'user-read-playback-position',
    'user-read-recently-played',
    'user-follow-read',
    'user-follow-modify'
];



app.get('/login', (req, res) =>
{
    res.redirect(bot.spotifyApi.createAuthorizeURL(scopes));
});

app.get('/callback', (req, res) =>
{
    const error = req.query.error;
    const code = req.query.code;
    const state = req.query.state;

    if (error)
    {
        console.error('Callback Error:', error);
        res.send(`Callback Error: ${error}`);
        return;
    }

    bot.spotifyApi
        .authorizationCodeGrant(code)
        .then(data =>
        {
            const access_token = data.body['access_token'];
            const refresh_token = data.body['refresh_token'];
            const expires_in = data.body['expires_in'];

            bot.spotifyApi.setAccessToken(access_token);
            bot.spotifyApi.setRefreshToken(refresh_token);

            // console.log('access_token:', access_token);
            // console.log('refresh_token:', refresh_token);

            console.log(
                `Successfully retreived access token. Expires in ${expires_in} s.`
            );
            res.send('Success! You can now close the window.');

            bot.loadSpot();

            setInterval(async () =>
            {
                const data = await bot.spotifyApi.refreshAccessToken();
                const access_token = data.body['access_token'];

                console.log('The access token has been refreshed!');
                // console.log('access_token:', access_token);
                bot.spotifyApi.setAccessToken(access_token);
            }, expires_in / 2 * 1000);
        })
        .catch(error =>
        {
            console.error('Error getting Tokens:', error);
            res.send(`Error getting Tokens: ${error}`);
        });
});

app.listen(8888, () =>
    console.log(
        'HTTP Server up. Now go to http://localhost:8888/login in your browser.'
    )
);
client.login(bot.tokenDiscord);