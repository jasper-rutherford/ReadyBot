const Discord = require('discord.js');
const SpotifyWebApi = require('spotify-web-api-node');
const client = new Discord.Client();
const fs = require('fs');
const express = require('express');


const { tokenDiscord, testTokenDiscord, clientId, clientSecret } = require('./data/config.json');


const app = express();

//LISTNODE DEFINITION
class Node
{
    constructor(name, uri, value, prev, next)
    {
        this.name = name;
        this.uri = uri;
        this.value = value;
        this.prev = prev;
        this.next = next;

        this.list = function ()
        {
            let num = 1;
            this.listing(num);
        };

        this.listing = function (num)
        {
            console.log(num, this.name); //print the name

            if (this.next != null)
            {
                this.next.listing(num + 1); //list the next node
            }
        };

        //function that checks if this node or any of its nexts have the given id
        this.contains = function (id)
        {
            //if this node has the id return true
            if (this.uri == id)
            {
                return true;
            }

            //otherwise if there are no more nexts return false
            else if (this.next == null)
            {
                return false;
            }


            //otherwise call the function on the next node
            else
            {
                return this.next.contains(id);
            }
        };

        //recursively finds the length
        this.length = function ()
        {
            return this.lengthing(1);
        };

        //helps recursively find the length
        this.lengthing = function (len)
        {
            //if there is a next node
            if (this.next != null)
            {
                //return the current length + the length of the next node
                return this.next.lengthing(len + 1);
            }
            //if there is no next node 
            else
            {
                //return the current length
                return len;
            }
        };
    }
}
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
    spotifyUserID: '446i69szgjkow87ew9yjbbhnn',             //my user id

    barrelID: "4jCZqEM3AdWj3uSpjuY9IK",  // "5GFPI2Hii5HfpUUnStQN2r", //             //bottom of the barrel
    barrelHead: null,                                       //stores bottom of the barrel as a linked list
    barrelTail: null,                                       //head is first node, tail is last
    barrelLength: 0,
    barrelRead: false,                                      //whether or not the barrel has been read in yet

    valuesHead: null,                                       //stores the song values list
    valuesTail: null,                                       //head is first, tail is last
    valuesMap: new Discord.Collection,                      //maps the song id's to their nodes in the list
    valuesLength: 0,                                        //length of the values list 

    themes: [],                                             //a list of all the themes
    currentTheme: '',                                       //the current theme
    themeSet: false,                                        //whether or not the theme has been set yet

    playlistIDs: [null, null, null, null, null, null],      //list of playlist ID's for the theme

    clearing: false,                                        //stupid helper variable that makes sure we dont add things while things are being deleted

    pushes: 0,                                              //helper var for loading playlists (current number of playlist chunks that have been pushed)
    totPushes: 0,                                           //helper var for loading playlists (total number of playlist chunks to push)

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

    loadSpot: async function ()
    {
        let test = await bot.spotifyApi.getPlaylist(bot.barrelID);
        console.log(test.body.name);
        console.log("^^^^^^");
        //tell the bot that barrel/list need to be read/set
        bot.barrelRead = false;
        bot.themeSet = false;

        //read the base list of songs
        bot.readBarrelList();

        //get wrapper from file
        var fileName = './data/spotify/themes.json';
        var wrapper = JSON.parse(fs.readFileSync(fileName));

        //read in themes & current theme
        bot.currentTheme = wrapper.currentTheme;
        bot.themes = wrapper.themes;

        //set the theme to the current theme (aka what the theme was last time the bot saved)
        bot.setTheme(this.currentTheme);

        // bot.syncLengths();
    },

    readBarrelList: async function ()
    {
        console.log("Reading barrel");
        var loops = null;

        // Get the bottom of the barrel length
        await bot.spotifyApi.getPlaylist(bot.barrelID)
            .then(async function (data)
            {
                bot.barrelLength = data.body.tracks.total;
                loops = bot.barrelLength / 100;
                let chunkNum = 0;

                //read in all the songs from the playlist in sections (the api limits you to 100 at a time)
                for (var lcv = 0; lcv < loops; lcv++)
                {
                    // Get tracks 
                    await bot.spotifyApi.getPlaylistTracks(bot.barrelID, {
                        offset: lcv * 100,
                        limit: 100,
                        fields: 'items'
                    })
                        .then(
                            function (data)
                            {
                                data.body.items.forEach(item =>         //read each song in the chunk into barrelList
                                {
                                    //node for the song being read
                                    let node = new Node(item.track.name, item.track.uri, null, null, null);

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
                                    console.log("Barrel has been read");
                                    // bot.newTheme("Default", ["5GFPI2Hii5HfpUUnStQN2r","1sk0YLFu6qEeV3E57Nu6L7","1vl2nOZuGj0Apadn7T4ChC","31fTXPEzreUh3AKkXgOnIF","7CzAPNHwxvwC2Yk54QjLY6","03DqdGqj9o5mDuBAlImvoL"]);

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
        console.log("Trying to make a new theme called \"" + theme + "\"");

        //if theme already exists
        if (bot.themes.indexOf(theme) != -1 && false)
        {
            console.log("Tried to add a theme that already exists.");
        }
        //if theme does not exist
        else
        {
            //add theme to list of themes
            bot.themes.push(theme);

            //clear the old map
            this.valuesMap.clear();

            //build the new list, each song defaults to a value of 0
            bot.buildNewList();

            //set the new theme
            bot.currentTheme = theme;

            //set the new playlist IDs
            for (let lcv = 0; lcv < 6; lcv++)
            {
                this.playlistIDs[lcv] = playlistIDs[lcv];
            }

            // //print the values list
            // let valNode = bot.valuesHead;
            // let count = 0;
            // while (valNode != null)
            // {
            //     count++;
            //     console.log(count + ", " + valNode.name);
            //     valNode = valNode.next;
            // }

            //save all the new stuff to files
            bot.saveSpotify();
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
            bot.valuesHead = null;
            bot.valuesTail = null;

            //loop through the barrelList
            let barrelNode = bot.barrelHead;

            while (barrelNode != null)
            {
                //create the list node for this step
                let listNode = new Node(barrelNode.name, barrelNode.uri, 0, null, null);

                //add the node to the map
                bot.valuesMap.set(listNode.uri, listNode);

                //if it is the first node in the loop 
                if (bot.valuesHead == null)
                {
                    //set the node to be head and tail
                    bot.valuesHead = listNode;
                    bot.valuesTail = listNode;
                }
                //otherwise
                else
                {
                    listNode.prev = bot.valuesTail;         //update the new node's previous 
                    bot.valuesTail.next = listNode;         //update the tail's next
                    bot.valuesTail = listNode;              //set the new node to be the tail
                }

                barrelNode = barrelNode.next;
            }
        }
    },

    saveSpotify: function ()
    {
        bot.saveValuesList();
        bot.saveThemes();
    },

    //saves the list of themes
    saveThemes: function ()
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

    //saves the values list to file
    saveValuesList: function ()
    {
        var wrapper =
        {
            playlistIDs: bot.playlistIDs,
            songs: []
        }

        //converts the linked list of songs to an array
        let node = bot.valuesHead;
        while (node != null)
        {
            let wrapSong =
            {
                name: node.name,
                id: node.uri,
                value: node.value
            }

            wrapper.songs.push(wrapSong);

            node = node.next;
        }

        //where to save to
        var fileName = './data/spotify/themes/' + bot.currentTheme + '.json';

        //saves the thing to the file
        fs.writeFileSync(fileName, JSON.stringify(wrapper), e =>
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

            // Try to sync the length of the list to the length of the barrel
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
        this.valuesMap.clear();

        //get wrapper from file
        var fileName = './data/spotify/themes/' + this.currentTheme + '.json';

        var wrapper = JSON.parse(fs.readFileSync(fileName));

        //set the new playlist IDs
        for (let lcv = 0; lcv < 6; lcv++)
        {
            this.playlistIDs[lcv] = wrapper.playlistIDs[lcv];
        }

        //clear the list from what was there
        bot.valuesHead = null;
        bot.valuesTail = null;

        //set the list length
        bot.valuesLength = wrapper.songs.length;

        //build the node list from the array in the wrapper
        for (let lcv = 0; lcv < wrapper.songs.length; lcv++)
        {
            //create the list node for this step
            let listNode = new Node(wrapper.songs[lcv].name, wrapper.songs[lcv].uri, wrapper.songs[lcv].value, null, null);

            //add the node to the map
            bot.valuesMap.set(listNode.uri, listNode);

            //if it is the first node in the loop 
            if (bot.valuesHead == null)
            {
                //set the node to be head and tail
                bot.valuesHead = listNode;
                bot.valuesTail = listNode;
            }
            //otherwise
            else
            {
                listNode.prev = bot.valuesTail;   //update the new node's previous 
                bot.valuesTail.next = listNode;   //update the tail's next
                bot.valuesTail = listNode;        //set the new node to be the tail
            }
        }
    },

    //TODO: finish this
    syncLengths: function ()
    {
        if (bot.barrelRead && bot.themeSet)
        {
            console.log("Syncing lengths: \nB[" + bot.barrelLength + "], V[" + bot.valuesLength + "] -> ");

            //check if anything has been added to the barrel
            //loop through the barrel list
            let barrelNode = bot.barrelHead;
            while (barrelNode != null)
            {
                //if barrelNode is not in the values list
                if (!bot.valuesHead.contains(barrelNode.uri))
                {
                    //TODO: fix this
                    //find the right spot in the value list to add the song (according to a default value of 0)
                    let valueNode = bot.valuesHead;
                    while (valueNode != null)
                    {
                        //if a node is found with a negative value
                        if (valueNode.value < 0)
                        {
                            //insert the new node before the node with a negative value
                            valueNode.prev = new Node(barrelNode.name, barrelNode.uri, 0, valueNode.prev, valueNode);

                            //if inserted before the head, update the head (it would be truly unfortunate if the head had negative value, but ya gotta plan for these things i guess)
                            if (valueNode.prev.prev == null)
                            {
                                bot.valuesHead = valueNode.prev;
                            }

                            //stop searching once the new node is inserted
                            break;
                        }

                        //advance to next node in list
                        valueNode = valueNode.next;
                    }

                    //if the node was not inserted, and no songs had negative value
                    if (valueNode == null)
                    {
                        //insert the new node at the end of the list
                        bot.valuesTail.next = new Node(barrelNode.name, barrelNode.uri, 0, bot.valuesTail, null);
                        bot.valuesTail = bot.valuesTail.next;   //(update the value list tail)                     
                    }

                    //update the length of the value list
                    bot.valuesLength++;
                }
                barrelNode = barrelNode.next;
            }

            //check if anything has been removed from the barrel
            //loop through the values list
            let valuesNode = bot.valuesHead;
            while (valuesNode != null)
            {
                //if valuesNode is not in the barrel
                if (!bot.barrelHead.contains(valuesNode.uri))
                {
                    //remove the node from the values list
                    //special case for if the valuesNode is the head
                    if (valuesNode.uri == bot.valuesHead.uri)
                    {
                        bot.valuesHead = bot.valuesHead.next;
                        bot.valuesHead.prev = null;
                    }
                    //special case for if the valuesNode is the tail
                    else if (valuesNode.uri == bot.valuesTail.uri)
                    {
                        bot.valuesTail = bot.valuesTail.prev;
                        bot.valuesTail.next = null;
                    }
                    //standard case for any other node
                    else
                    {
                        valuesNode.prev.next = valuesNode.next;
                        valuesNode.next.prev = valuesNode.prev;
                    }
                    bot.valuesLength--;
                }
                valuesNode = valuesNode.next;
            }

            console.log("B[" + bot.barrelLength + "], V[" + bot.valuesLength + "]\nSynced lengths.");
            // console.log(bot.valuesHead.length());

            //save the updated list to file
            bot.saveValuesList();

            //reload the playlists
            console.log("Reloading all playlists");
            bot.reloadPlaylists(0);
            // bot.reloadPlaylists();
        }
    },

    reloadPlaylists: function (lcv)
    {
        // console.log(lcv);
        if (lcv > 11)
        {
            console.log("Finished Reloading All Playlists");
        }
        //Clear the playlist related to lcv / 2
        else if (lcv % 2 == 0)
        {
            let realLCV = lcv / 2;
            let id = bot.playlistIDs[realLCV];
            console.log("\t\tattempting to clear #" + realLCV);

            console.log("\tReloading Playlist " + realLCV);
            // Get the playlist length
            bot.spotifyApi.getPlaylist(id)
                .then(function (data)
                {
                    length = data.body.tracks.total;
                    loops = length / 100;
                    let tracksRemoved = 0;

                    //read in all the songs from the playlist in sections (the api limits you to 100 at a time)
                    for (var lcv2 = 0; lcv2 < loops; lcv2++) 
                    {
                        //make each async function run more out of sync from each other
                        setTimeout(function () 
                        {
                            console.log('Hello World!');
                        }, 20 * lcv2);
                     
                        // Get tracks 
                        bot.spotifyApi.getPlaylistTracks(id, {
                            offset: lcv2 * 100,
                            limit: 100,
                            fields: 'items'
                        })
                            .then(function (data)
                            {
                                //the list of objects containing uri's to add onto (ie songs will be added to this list then the list will be sent to the api and all songs from the list will be removed from the playlist)
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
                                            //tell the console the same
                                            console.log("\t\tcleared #" + realLCV);
                                            // console.log("about to launch " + lcv + 1);
                                            // bot.reloadPlaylists(lcv + 1);
                                            // console.log("launched " + lcv + 1);
                                        }
                                    });
                            },
                                function (err)
                                {
                                    console.log('Something went wrong with clearing #' + realLCV + err);
                                }
                            );
                    }
                }, function (err)
                {
                    console.log('Something went wrong clearing #' + realLCV + err);
                    bot.clearing = false;
                });
        }
        //Clear the playlist related to (lcv - 1) / 2
        else
        {
            let realLCV = (lcv - 1) / 2;
            console.log("\n\t\tattempting to load #" + realLCV);

            //determine how long the playlist should be
            let len = 0;
            if (realLCV == 0)
            {
                len = 1;
            }
            else if (realLCV == 1)
            {
                // console.log("BL: " + bot.barrelLength + " Mult: " + Math.floor(0.05 * bot.barrelLength));
                len = Math.floor(0.05 * bot.barrelLength);
            }
            else
            {
                len = Math.floor(0.25 * (realLCV - 1) * bot.barrelLength);
            }

            console.log("\t\tPlaylist #" + realLCV + " should have a length of [" + len + "]");

            //convert len songs into a list to be sent into the api (added to the playlist)

            //gets the head of the value list
            let listNode = bot.valuesHead;

            // //the list of songs to add to the playlist (sent in chunks)
            // let tracks = [];

            //update helper vars
            bot.pushes = 0;
            bot.totPushes = Math.ceil(len / 100);

            //setup the building/addition of the chunks
            for (let lcv2 = 0; lcv2 < len; lcv2++)
            {
                if (lcv2 % 100 == 0)
                {
                    bot.addTracks(listNode, len, realLCV);
                }

                // listNode = listNode.next;
                // tracks.push("spotify:track:" + listNode.id); //deprecated, id is the uri now

                // //if the chunk is full or this is the last step of the loop
                // if (tracks.length == 100 || lcv2 == len - 1)
                // {
                //     // console.log(tracks);
                //     //send the current chunk to the playlist
                //     bot.spotifyApi.addTracksToPlaylist(bot.playlistIDs[realLCV], tracks)
                //         .then(function (data)
                //         {
                //             pushes++;
                //             console.log("\t\t\tAdded tracks to #" + realLCV);

                //             //if this is the last step of the loop
                //             if (pushes == Math.ceil(len / 100))
                //             {
                //                 //tell the console this playlist is done
                //                 console.log("\t\tFinished loading #" + realLCV);
                //                 console.log("\tFinished reloading #" + realLCV + "\n");

                //                 //reload the next playlist
                //                 bot.reloadPlaylists(lcv + 1);
                //             }
                //         }, function (err)
                //         {
                //             console.log('\t\t\tFailed to add tracks to playlist', realLCV);//, "\n", err);
                //         });

                //     //clear the chunk after it is sent
                //     tracks = [];
                // }

                //advance to next value node in the list
                listNode = listNode.next;
            }
        }
    },

    //add up to 100 tracks starting at startNode to the given playlist
    addTracks: function (startNode, len, playlistNum)
    {
        let aNode = startNode;
        let tracks = [];

        if (aNode != null)
        {
            //build the chunk to send to the playlist
            for (let lcv = 0; lcv < 100 || lcv < len; lcv++)
            {
                tracks.push(aNode.uri);

                aNode = aNode.next;

                //stop the loop if end of values list is reached
                if (aNode == null)
                {
                    break;
                }
            }

            // console.log(tracks);

            //send the chunk to the playlist
            bot.spotifyApi.addTracksToPlaylist(bot.playlistIDs[playlistNum], tracks)
                .then(function (data)
                {
                    bot.pushes++;
                    console.log("\t\t\tAdded tracks from [" + startNode.name + "] to #" + playlistNum);

                    //if this is the last step of the loop
                    if (bot.pushes == bot.totPushes)
                    {
                        //tell the console this playlist is done
                        console.log("\t\tFinished loading #" + playlistNum + " len: " + tracks.length);
                        console.log("\tFinished reloading #" + playlistNum + "\n");

                        //reload the next playlist
                        bot.reloadPlaylists(2 * playlistNum + 1);
                    }
                }, function (err)
                {
                    console.log("\t\t\tFailed to add tracks from [" + startNode.name + "]  " + " len: " + tracks.length + " to playlist, retrying", playlistNum);//, "\n", err);
                    bot.addTracks(startNode, playlistNum);
                });
        }
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
                `Successfully retrieved access token. Expires in ${expires_in} s.`
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