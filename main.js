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
            if (this.next != null)
            {
                this.next.listing(num + 1); //list the next node
            }
        };

        //function that checks if this node or any of its nexts have the given id
        this.contains = function (uri)
        {
            //if this node has the id return true
            if (this.uri == uri)
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
                return this.next.contains(uri);
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

        //moves this node up the valueList according to its value
        this.up = function (aPrev)
        {
            //a spot has been found when the top of the list is reached or a song is found that has a value equal or greater than the searching node's value
            if (aPrev == null || aPrev.value >= this.value)
            {
                //disconnect the node from the list
                if (this.prev != null)
                {
                    this.prev.next = this.next;

                    //special handling if this is the valueTail
                    if (this == bot.valuesTail)
                    {
                        bot.valuesTail = this.prev;
                    }
                }
                if (this.next != null)
                {
                    this.next.prev = this.prev;

                    //special handling if this is the valueHead
                    if (this == bot.valuesHead)
                    {
                        bot.valuesHead = this.next;
                    }
                }

                //reconnect it in the right spot

                //special case for if being inserted as the new head
                if (aPrev == null)
                {
                    this.prev = null;
                    this.next = bot.valuesHead;
                    bot.valuesHead.prev = this;
                    bot.valuesHead = this;
                }
                //special case for if being inserted as the new tail
                else if (aPrev == bot.valuesTail)
                {
                    this.prev = bot.valuesTail;
                    this.next = null;
                    bot.valuesTail.next = this;
                    bot.valuesTail = this;
                }
                //standard case
                else
                {
                    this.next = aPrev.next;
                    this.prev = aPrev;
                    this.next.prev = this;
                    this.prev.next = this;
                }
                //save new configuration/values
                bot.saveSpotify();
            }
            //if a spot hasn't been found yet then keep searching
            else
            {
                this.up(aPrev.prev);
            }
        };

        //moves this node down the valueList according to its value
        this.down = function (aNext)
        {
            //a spot has been found when the top of the list is reached or a song is found that has a value equal or greater than the searching node's value
            if (aNext == null || aNext.value <= this.value)
            {
                //disconnect the node from the list
                if (this.prev != null)
                {
                    this.prev.next = this.next;

                    //special handling if this is the valueTail
                    if (this == bot.valuesTail)
                    {
                        bot.valuesTail = this.prev;
                    }
                }
                if (this.next != null)
                {
                    this.next.prev = this.prev;

                    //special handling if this is the valueHead
                    if (this == bot.valuesHead)
                    {
                        bot.valuesHead = this.next;
                    }
                }


                //reconnect it in the right spot

                //special case for if being inserted as the new head
                if (aNext == bot.valuesHead)
                {
                    this.prev = null;
                    this.next = bot.valuesHead;
                    bot.valuesHead.prev = this;
                    bot.valuesHead = this;
                }
                //special case for if being inserted as the new tail
                if (aNext == null)
                {
                    this.prev = bot.valuesTail;
                    this.next = null;
                    bot.valuesTail.next = this;
                    bot.valuesTail = this;
                }
                //standard case
                else
                {
                    this.next = aNext;
                    this.prev = aNext.prev;
                    this.next.prev = this;
                    this.prev.next = this;
                }

                //save new configuration
                bot.saveSpotify();
            }
            else
            {
                this.down(aNext.next);
            }
        };

        //returns the index of the node in its list
        this.index = function ()
        {
            if (this.prev == null)
            {
                return 0;
            }
            else
            {
                return 1 + this.prev.index();
            }
        };

        //returns the node at the requested index in the list, starting at this node. returns null if index is too big or too small.
        this.get = function (index)
        {
            if (index < 0)
            {
                return null;
            }
            else if (index === 0)
            {
                return this;
            }
            else if (index > 0)
            {
                if (this.next === null)
                {
                    return null;
                }
                else
                {
                    return this.next.get(index - 1);
                }
            }
        }
    }
}
//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: true,
    temp: true,
    tokenDiscord: tokenDiscord,
    prefix: '~',
    altPrefix: '\\',
    client: client,
    channelTypes: ['dm', 'text'],
    messageTypes: ['commands', 'generics', 'specials'],
    guildID: '752727453918691402',
    guild: undefined,
    jaspaDM: '754507044312317962',
    jaspaID: '130880023069589505',
    botID: '754498512359653466',

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
    // barrelLength: 0,

    valuesHead: null,                                       //stores the song values list
    valuesTail: null,                                       //head is first, tail is last
    valuesMap: new Discord.Collection,                      //maps the song id's to their nodes in the list

    themes: [],                                             //a list of all the themes
    currentTheme: '',                                       //the current theme

    playlistIDs: [null, null, null, null, null, null],      //list of playlist ID's for the theme
    playlistMap: new Discord.Collection,                    //maps each playlist id to its index in playlistIDs
    playlistLengths: [-1, -1, -1, -1, -1, -1],              //the length of each playlist

    songMessage: null,                                      //the message to check for reactions on for song manipulation
    testVal: 0,

    setThemeMsg: null,                                      //the ballot for spotify votes
    spotifyChannel: '904467973434134589',                   //default location to send ballot on startup

    mode: "normal",
    voteScores: new Discord.Collection,                     //maps the song uris to their scores 
    voteNames: [],                                          //list of all voteNames (like themes, but for vote mode)
    voteName: null,                                         //the current voteName
    voteMin: null,                                          //the minimum allowed score a uri can have
    voteMax: null,                                          //the maximum allowed score a uri can have
    fromList: null,                                         //where songs are drawn from in vote mode
    badList: null,                                          //where songs with scores below the minimum are sent
    goodList: null,                                         //where songs with scores above the maximum are sent

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
        bot.testStuff();
        //get wrapper from file
        var fileName = './data/spotify/themes.json';
        var wrapper = JSON.parse(fs.readFileSync(fileName));

        //read in current theme, themes, and voteNames
        bot.currentTheme = wrapper.currentTheme;
        bot.themes = wrapper.themes;
        bot.voteNames = wrapper.voteNames;

        //set the theme to the current theme (aka what the theme was last time the bot saved)
        //setTheme automatically calls the next step
        bot.setTheme(bot.currentTheme);
    },

    readBarrelList: function ()
    {
        console.log("Reading barrel");

        //reset the head/tail
        bot.barrelHead = null;
        bot.barrelTail = null;

        var loops = null;

        // Get the bottom of the barrel length
        bot.spotifyApi.getPlaylist(bot.barrelID)
            .then(function (data)
            {
                let length = data.body.tracks.total;
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

    //saves the current theme, the themes, and the voteNames
    saveThemes: function ()
    {
        var wrapper =
        {
            currentTheme: this.currentTheme,
            themes: this.themes,
            voteNames: this.voteNames
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
                uri: node.uri,
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

    saveVoteMode: function ()
    {
        bot.saveVoteScores();
        bot.saveThemes();
    },

    //saves the info relevant to the voteName
    saveVoteScores: function ()
    {
        var wrapper =
        {
            voteScores: [],
            min: bot.voteMin,
            max: bot.voteMax,
            from: bot.fromList,
            bad: bot.badList,
            good: bot.goodList
        }

        //convert the voteScores map into the wrapper's voteScores
        let keys = bot.voteScores.keys();
        let key = keys.next();
        while (!key.done)
        {
            wrapper.voteScores.push([key.value, bot.voteScores.get(key.value)]);
            key = keys.next();
        }


        var fileName = './data/spotify/voteNames/' + bot.voteName + '.json';

        //saves the stuff to a file
        fs.writeFile(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    },

    //reads in the relevant votemode stuff from the given voteName
    loadVoteScores: function (name)
    {
        //get wrapper from file
        var fileName = './data/spotify/voteNames/' + name + '.json';
        var wrapper = JSON.parse(fs.readFileSync(fileName));

        bot.voteMin = wrapper.min;
        bot.voteMax = wrapper.max;
        bot.fromList = wrapper.from;
        bot.badList = wrapper.bad;
        bot.goodList = wrapper.good;
        bot.voteName = name;
        bot.mode = "vote";

        //convert to map 
        wrapper.voteScores.forEach(item =>
        {
            bot.voteScores.set(item[0], item[1]);
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
                uri: node.uri,
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

            //tell the console the same
            console.log("Theme has been set to", theme);

            //read the base list of songs (this function then calls the next step when finished)
            bot.readBarrelList();
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
            bot.playlistIDs[lcv] = wrapper.playlistIDs[lcv];
            bot.playlistMap.set(wrapper.playlistIDs[lcv], lcv);
        }

        //clear the old list
        bot.valuesHead = null;
        bot.valuesTail = null;

        //build the node list from the array in the wrapper
        for (let lcv = 0; lcv < wrapper.songs.length; lcv++)
        {
            //create the list node for this step
            // console.log("uri: " + wrapper.songs[lcv].uri);
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
        // console.log(bot.valuesHead);
    },

    syncLengths: function ()
    {
        console.log("Syncing lengths: \nB[" + bot.barrelHead.length() + "], V[" + bot.valuesHead.length() + "], M[" + bot.valuesMap.size + "] -> ");

        //check if anything has been added to the barrel
        //loop through the barrel list
        let barrelNode = bot.barrelHead;
        while (barrelNode != null)
        {
            //if barrelNode is not in the values list
            if (!bot.valuesHead.contains(barrelNode.uri))
            {
                //create a node with a default value of 0
                let newNode = new Node(barrelNode.name, barrelNode.uri, 0, null, null);

                //send the new node into the playlist
                newNode.up(bot.valuesTail);

                bot.valuesMap.set(newNode.uri, newNode);
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
                //remove the node from the map
                bot.valuesMap.delete(valuesNode.uri);

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
            }
            valuesNode = valuesNode.next;
        }

        console.log("B[" + bot.barrelHead.length() + "], V[" + bot.valuesHead.length() + "], M[" + bot.valuesMap.size + "]\nSynced lengths.");

        //save the updated list to file
        bot.saveValuesList();

        //reload the playlists
        console.log("Reloading all playlists");
        bot.clearPlaylist(bot.playlistIDs[0], true);
    },

    //id:           the id of the playlist to clear
    //reloading:    whether or not to load the playlist after it has been cleared
    clearPlaylist: function (id, reloading) 
    {
        console.log("Clearing a chunk from playlist " + id);

        //get the index of the playlist id from the map
        /* 
            Q. But Jasper, if you're already storing the ids in an array, wouldn't it make more sense to send in the index and get the id from the array? 
            Surely then you wouldn't need to create a whole extra map to get the id's index?
            
            A. No. I tried that. And it just wouldn't work. getPlaylist would error out every time, even though it would print out the correct id. 
        */
        let idIndex = bot.playlistMap.get(id);

        //get the length of the playlist 
        bot.spotifyApi.getPlaylist(id).then(function (data)
        {
            let length = data.body.tracks.total;

            //if the playlist is not empty
            if (length != 0)
            {
                //api limits the limit to 100 tracks
                bot.spotifyApi.getPlaylistTracks(id, {
                    limit: 100,
                    fields: 'items'
                }).then(function (data)
                {
                    let tracks = [];

                    data.body.items.forEach(item =>
                    {
                        //convert each track to an object and add it to the list
                        tracks.push({ uri: item.track.uri });
                    });

                    //delete all the tracks covered by this chunk of the for loop
                    bot.spotifyApi.removeTracksFromPlaylist(id, tracks).then(function (data)
                    {
                        bot.clearPlaylist(id, reloading);
                    }, function (err)
                    {
                        console.log('failed to remove tracks from playlist ' + id);
                    });
                }, function (err)
                {
                    console.log('failed to get tracks from playlist ' + id);
                });
            }
            //otherwise if the length == 0
            else
            {
                //report that the playlist has been cleared
                console.log("cleared playlist " + id);
                //if currently reloading, then load the playlist back in
                if (reloading)
                {
                    console.log("loading the playlist back in");
                    // console.log("valuehead uri before loading: " + bot.valuesHead.uri);
                    bot.loadPlaylist(id, reloading, bot.valuesHead, 0);
                }
            }
        }, function (err)
        {
            console.log('failed to get the length of playlist ' + id);
        });
    },

    //id:           id of the playlist to load
    //reloading:    whether or not to reload the next playlist after this one is loaded
    //listNode:     add up to 100 songs from the valueList to the playlist starting from this one
    //added:        the number of songs that have already been added to the playlist
    loadPlaylist: function (id, reloading, aNode, added)
    {
        //get the index of the playlist id from the map
        /* 
            Q. But Jasper, if you're already storing the ids in an array, wouldn't it make more sense to send in the index and get the id from the array? 
            Surely then you wouldn't need to create a whole extra map to get the id's index?
            
            A. No. I tried that. And it just wouldn't work. getPlaylist would error out every time, even though it would print out the correct id. 
        */
        let idIndex = bot.playlistMap.get(id);

        //determine how long the playlist should be
        let len = 0;
        if (idIndex == 0)
        {
            len = 1;
        }
        else if (idIndex == 1)
        {
            // console.log("BL: " + bot.barrelLength + " Mult: " + Math.floor(0.05 * bot.barrelLength));
            len = Math.floor(0.05 * bot.barrelHead.length());
        }
        else
        {
            len = Math.floor(0.25 * (idIndex - 1) * bot.barrelHead.length());
        }

        //update the lengths into the bot
        bot.playlistLengths[idIndex] = len;

        console.log("Adding a chunk to playlist " + id + " [" + len + "]");
        // console.log("\t\tPlaylist #" + idIndex + " should have a length of [" + len + "]");

        //build the chunk to be sent to the playlist
        let tracks = [];

        //loop will add songs to the chunk until either the length of the playlist has been reached, or until listNode runs out of songs, or until this chunk reaches 100 songs (api limitation)
        let newAdded = 0;
        let valueNode = aNode;
        while (added + newAdded < len && valueNode != null && newAdded < 100)
        {
            // console.log("looping");
            //add the current song from the valuesList
            tracks.push(valueNode.uri);

            // console.log("valuenode uri during load: " + valueNode.uri);

            //increment the number of songs added in this chunk
            newAdded++;

            //advance to the next valueNode
            valueNode = valueNode.next;
        }

        //send the chunk to the playlist
        bot.spotifyApi.addTracksToPlaylist(id, tracks).then(function (data)
        {
            //if the length of the playlist has been reached or if listNode has run out of songs, stop loading the playlist
            if (added + newAdded == len || valueNode == null)
            {
                //if reloading, start clearing the next playlist
                if (reloading)
                {
                    console.log("loaded playlist " + id);
                    //unless this is the last playlist
                    if (idIndex != 2)//TODO CHANGE THIS BACK TO 5 OR MAKE A BETTER REAL WORKAROUND

















































                    //^^^^^^^
                    {
                        bot.clearPlaylist(bot.playlistIDs[idIndex + 1], reloading);
                    }
                    else
                    {
                        console.log("reloaded all playlists");
                        console.log("Current theme: " + bot.currentTheme);
                        if (bot.setThemeMsg != null)
                        {
                            bot.setThemeMsg.react('✅')
                                .catch(error => console.error('One of the emojis failed to react'));
                        }
                        else
                        {
                            bot.helpers('sendballot', bot.client.channels.cache.get(bot.spotifyChannel));
                        }
                    }
                }
            }
            //otherwise, load the next chunk
            else
            {
                bot.loadPlaylist(id, reloading, valueNode, added + newAdded);
            }
        }, function (err)
        {
            console.log('\t\t\tFailed to add chunk to playlist', id);
        });
    },

    adjust: function (adjustments)
    {
        //only adjust things if there are things to adjust
        if (adjustments.length != 0)
        {
            // console.log(adjustments.length + "(adjusts)");
            //adjust the first thing in the list (this also trims the first thing out of the playlist, how handy)
            let adjustment = adjustments.shift();

            //clear the given song from the given playlist
            if (adjustment.adjustment === "clear")
            {
                bot.spotifyApi.removeTracksFromPlaylist(adjustment.id, [{ uri: adjustment.uri }]).then(function (data)
                {
                    //after this adjustment is complete, perform the rest of the adjustments
                    bot.adjust(adjustments);
                }, function (err)
                {
                    console.log('failed to clear ' + adjustment.uri + ' from playlist ' + adjustment.id);
                });
            }
            //add the given song to the given playlist
            else
            {
                bot.spotifyApi.addTracksToPlaylist(adjustment.id, [adjustment.uri]).then(function (data)
                {
                    //after this adjustment is complete, perform the rest of the adjustments
                    bot.adjust(adjustments);
                }, function (err)
                {
                    console.log('failed to add ' + adjustment.uri + ' to playlist ' + adjustment.id);
                });
            }
        }
    },

    testStuff: function ()
    {
        let node1 = new Node("song1", "song1", 0, null, null);
        let node2 = new Node("song2", "song2", 0, node1, null);
        node1.next = node2;
        let node3 = new Node("song3", "song3", 0, node2, null);
        node2.next = node3;
        let node4 = new Node("song4", "song4", 0, node3, null);
        node3.next = node4;
        let node5 = new Node("song5", "song5", 0, node4, null);
        node4.next = node5;

        // console.log(node5.index());
    },

    //aNode: the node whose value is to be changed
    //diff: how much to change the value by
    changeValue: function (aNode, diff)
    {
        // console.log("changing value, length is: " + bot.valuesHead.length());

        //Step 1: save what songs are currently in which playlists
        //list of all the songs in each playlist (2d array)
        let uriLists = [];

        //add all the songs for each playlist
        for (let playlistIndex = 0; playlistIndex < 6; playlistIndex++)
        {
            //the list of songs in this playlist
            let uriList = [];

            //loop through every song in this playlist
            let aNode = bot.valuesHead;
            for (let songIndex = 0; songIndex < bot.playlistLengths[playlistIndex]; songIndex++)
            {
                if (aNode != null)
                {
                    //add each song to the list
                    uriList.push(aNode.uri);
                    aNode = aNode.next;
                }
                else
                {
                    console.log("null, songIndex: " + songIndex);
                }
            }

            //add the list of songs to the list of songs per list
            uriLists.push(uriList);
        }

        //Step 2: change the node's value and move it accordingly
        aNode.value += diff;

        if (diff > 0) 
        {
            aNode.up(aNode.prev);
        }
        else if (diff < 0)
        {
            aNode.down(aNode.next);
        }

        //Step 3: check for differences between new order of songs and old order of songs and build the list of adjustments (figure out which songs have changed playlists)
        // console.log("step 2 complete");

        //initialize the list of adjustments
        let adjustments = [];

        //(only check the first 5 playlists because the last playlist will always contain all the songs by definition)
        for (let playlistIndex = 0; playlistIndex < 5; playlistIndex++)
        {
            //temporarily disconnect the lcvth playlist from the rest of the songs
            let stitch = bot.valuesHead.get(bot.playlistLengths[playlistIndex]);
            // console.log(playlistIndex);
            stitch.prev.next = null;

            let aNode = bot.valuesHead;
            for (let songIndex = 0; songIndex < bot.playlistLengths[playlistIndex]; songIndex++) 
            {
                //if the valueslist no longer contains a song from the urilist 
                if (!bot.valuesHead.contains(uriLists[playlistIndex][songIndex]))
                {
                    //add an adjustment to remove the song from the playlist
                    adjustments.push(
                        {
                            adjustment: "clear",
                            id: bot.playlistIDs[playlistIndex],
                            uri: uriLists[playlistIndex][songIndex]
                        });
                }

                //if a node in valuesList is not in the urilist
                if (uriLists[playlistIndex].indexOf(aNode.uri) == -1)
                {
                    //add an adjustment to add the song to the playlist
                    adjustments.push(
                        {
                            adjustment: "add",
                            id: bot.playlistIDs[playlistIndex],
                            uri: aNode.uri
                        });
                }

                aNode = aNode.next;
            }

            //reconnect the lcvth playlist to the rest of the songs
            stitch.prev.next = stitch;
        }
        // console.log("step 3 complete");

        //Step 4: adjust playlists accordingly
        bot.adjust(adjustments);
        // console.log("changed value, length is: " + bot.valuesHead.length());

    },

    //initializes the voteScores to 0
    initializeVoteScores: function ()
    {
        console.log("setting vote mode stuff");

        //reset the vote stuff
        bot.voteScores.clear();

        var loops = null;

        // Get the length of the fromList
        bot.spotifyApi.getPlaylist(bot.fromList)
            .then(function (data)
            {
                let length = data.body.tracks.total;
                loops = length / 100;
                let chunkNum = 0;

                //read in all the songs from the playlist in sections (the api limits you to 100 at a time)
                for (var lcv = 0; lcv < loops; lcv++)
                {
                    // Get tracks 
                    bot.spotifyApi.getPlaylistTracks(bot.fromList, {
                        offset: lcv * 100,
                        limit: 100,
                        fields: 'items'
                    })
                        .then(
                            function (data)
                            {
                                data.body.items.forEach(item =>         //read each song in the chunk into relevant stuff
                                {
                                    bot.voteScores.set(item.track.uri, 0);
                                });

                                chunkNum++;
                                let chunks = Math.ceil(loops);

                                if (chunkNum == chunks)
                                {
                                    //tell the console the same
                                    console.log("set vote stuff from the list at " + bot.fromList);
                                    bot.saveVoteMode();
                                }
                            },
                            function (err)
                            {
                                console.log('Something went wrong! 6758', err);
                            }
                        );

                }
            }, function (err)
            {
                console.log('Something went wrong! 3333', err);
            });
    }
}

//switches the variables to the test bot's stuff
if (bot.testbuild)
{
    bot.tokenDiscord = testTokenDiscord;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '755291736871272490';
    bot.botID = '754865264390176839';
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
        //if the message starts with \ and is from jasper
        if (message.content.startsWith(bot.altPrefix) && message.author.id === bot.jaspaID)
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
            }
        }
        //commands
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


        //         // //check if the command is in the readybot channel, and if its a spammy command
        //         // if (message.channel.id != bot.readyBotChannelID && client.things.get('textcommands').get(command).spam != false)
        //         // {
        //         //     message.channel.send('ayo, consider using the readybot channel (just an idea tho)');
        //         // }
        //     }
        //     //if the command is not in the list
        //     else
        //     {
        //         //react accordingly
        //         message.channel.send('That\'s not a command, bucko');
        //     }
        // }
        // // not commands
        // else
        // {
        //     if (bot.proxyChat && message.content != null)
        //     {
        //         bot.helpers('relayMsgToJaspa', { message: message });
        //     }

        //     //send to special people
        //     if (client.things.get('textspecials').get(message.member.id) != undefined) //if they are on the list
        //     {
        //         client.things.get('textspecials').get(message.member.id).execute(message, bot); //do their special code
        //     }

        //     client.things.get('textgenerics').get("nicebot").execute(message, bot);
        // }
    }
});

client.on('messageReactionAdd', (reaction, user) =>
{
    //special case automatically clears ✅, ❌, and ⌚ if they are from the bot and on the songMessage
    if ((reaction.emoji.name === "✅" || reaction.emoji.name === "❌" || reaction.emoji.name === "⌚")
        && bot.songMessage != null && bot.songMessage.id === reaction.message.id && user.id === bot.botID)
    {
        reaction.users.remove(user);
    }

    //case for voting based on 🥰, 👍, 👎, and 🤮, only works if the reaction is to the songMessage by Jaspa
    if ((reaction.emoji.name === "🥰" || reaction.emoji.name === "👍" || reaction.emoji.name === "👎" || reaction.emoji.name === "🤮")
        && bot.songMessage != null && reaction.message.id === bot.songMessage.id && user.id === bot.jaspaID)
    {
        //vote according to normal mode
        if (bot.mode == "normal")
        {
            // Get Information About The User's Current Playback State
            bot.spotifyApi.getMyCurrentPlaybackState().then(function (data)
            {
                // Output items
                if (data.body && data.body.is_playing)
                {
                    //get current song
                    bot.spotifyApi.getMyCurrentPlayingTrack().then(function (data)
                    {
                        //info about the current song
                        let name = data.body.item.name;
                        let uri = data.body.item.uri;

                        //get node of the song from the list
                        let aNode = bot.valuesMap.get(uri);

                        //if the song isn't in the values list 
                        if (aNode === undefined)
                        {
                            //create node version of new song for barrel
                            newBarrel = new Node(name, uri, null, null, null);

                            //check if this new song is already in the barrel
                            if (bot.barrelHead.contains(uri))
                            {
                                console.log("[" + name + "] has already been added to the barrel and will go into circulation after the next reload.");

                                bot.songMessage.react('⌚')
                                    .catch(error => console.error('One of the emojis failed to react'));
                            }
                            //otherwise if the new song is not in the barrel 
                            else
                            {
                                //add it to the barrel
                                console.log("[" + name + "] is new! Adding to barrel now.");

                                //add new song to barrel playlist
                                bot.spotifyApi.addTracksToPlaylist(bot.barrelID, [uri]).then(function (data)
                                {
                                    //add node to barrel list 
                                    bot.barrelTail.next = newBarrel;
                                    newBarrel.prev = bot.barrelTail;
                                    bot.barrelTail = newBarrel;

                                    bot.songMessage.react('✅')
                                        .catch(error => console.error('One of the emojis failed to react'));
                                }, function (err)
                                {
                                    console.log('\t\t\tFailed to add [' + name + '] to the barrel');
                                    bot.songMessage.react('❌')
                                        .catch(error => console.error('One of the emojis failed to react'));
                                });
                            }
                        }
                        //if the song is in the valuelist, adjust the song's value accordingly
                        else
                        {
                            let prevVal = aNode.value;
                            if (reaction.emoji.name === "🥰")
                            {
                                bot.changeValue(aNode, 3);
                                console.log(aNode.name + " (" + prevVal + " -> " + aNode.value + ")");
                            }
                            if (reaction.emoji.name === "👍")
                            {
                                bot.changeValue(aNode, 1);
                                console.log(aNode.name + " (" + prevVal + " -> " + aNode.value + ")");
                            }
                            if (reaction.emoji.name === "👎")
                            {
                                bot.changeValue(aNode, -1);
                                console.log(aNode.name + " (" + prevVal + " -> " + aNode.value + ")");

                                // Skip User’s Playback To Next Track
                                bot.spotifyApi.skipToNext().then(function ()
                                {
                                    // console.log('Skip to next');
                                }, function (err)
                                {
                                    //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
                                    console.log('failed to skip');
                                });
                            }
                            if (reaction.emoji.name === "🤮")
                            {
                                bot.changeValue(aNode, -3);
                                console.log(aNode.name + " (" + prevVal + " -> " + aNode.value + ")");

                                // Skip User’s Playback To Next Track
                                bot.spotifyApi.skipToNext().then(function ()
                                {
                                    // console.log('Skip to next');
                                }, function (err)
                                {
                                    //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
                                    console.log('failed to skip');
                                });
                            }
                        }
                    }, function (err)
                    {
                        console.log('couldn\'t get current song');
                    });
                }
                else
                {
                    console.log("User is not playing anything, or doing so in private.");
                }
            }, function (err)
            {
                console.log('couldn\'t get current playback state');
            });
        }
        //vote according to vote mode
        else if (bot.mode == "vote")
        {
            // Get Information About The User's Current Playback State
            bot.spotifyApi.getMyCurrentPlaybackState().then(function (data)
            {
                // Output items
                if (data.body && data.body.is_playing)
                {
                    //get current song
                    bot.spotifyApi.getMyCurrentPlayingTrack().then(function (data)
                    {
                        //info about the current song
                        let name = data.body.item.name;
                        let uri = data.body.item.uri;

                        //if the song isnt in the map, add it to the map 
                        if (bot.voteScores.get(uri) == undefined)
                        {
                            //add to score map
                            bot.voteScores.set(uri, 0);

                            //add to from playlist
                            bot.spotifyApi.addTracksToPlaylist(bot.fromList, [uri])
                                .then(function (data)
                                {
                                    console.log("\tadded " + name + " to rotation");
                                }, function (err)
                                {
                                    console.log("\tfailed to add " + name + " to rotation")
                                });
                        }

                        let prevVal = bot.voteScores.get(uri);
                        let bad = prevVal < bot.voteMin;
                        let good = prevVal > bot.voteMax;

                        let big = 5;
                        let small = 1;

                        if (reaction.emoji.name === "🥰")
                        {
                            bot.voteScores.set(uri, bot.voteScores.get(uri) + big);
                        }
                        if (reaction.emoji.name === "👍")
                        {
                            bot.voteScores.set(uri, bot.voteScores.get(uri) + small);
                        }
                        if (reaction.emoji.name === "👎")
                        {
                            bot.voteScores.set(uri, bot.voteScores.get(uri) - small);
                        }
                        if (reaction.emoji.name === "🤮")
                        {
                            bot.voteScores.set(uri, bot.voteScores.get(uri) - big);
                        }

                        let newScore = bot.voteScores.get(uri);

                        //if not already bad and score is less than minimum
                        if (!bad && newScore < bot.voteMin)
                        {
                            console.log(name + " (" + prevVal + " -> " + bot.voteScores.get(uri) + ") [bad]");
                            //remove from from
                            bot.spotifyApi.removeTracksFromPlaylist(bot.fromList, [{ uri: uri }]).then(function (data)
                            {
                                console.log("\tremoved " + name + " from rotation")
                            }, function (err)
                            {
                                console.log("\tfailed to remove " + name + " from rotation")
                            });

                            //add to bad
                            bot.spotifyApi.addTracksToPlaylist(bot.badList, [uri])
                                .then(function (data)
                                {
                                    console.log("\tadded " + name + " to bad playlist")
                                }, function (err)
                                {
                                    console.log("\tfailed to add " + name + " to bad playlist")
                                });
                        }
                        //if not already good and score is greater than maximum
                        else if (!good && bot.voteMax < newScore) 
                        {
                            console.log(name + " (" + prevVal + " -> " + bot.voteScores.get(uri) + ") [good]");
                            //remove from from
                            bot.spotifyApi.removeTracksFromPlaylist(bot.fromList, [{ uri: uri }]).then(function (data)
                            {
                                console.log("\tremoved " + name + " from rotation")
                            }, function (err)
                            {
                                console.log("\tfailed to remove " + name + " from rotation")
                            });

                            //add to good
                            bot.spotifyApi.addTracksToPlaylist(bot.goodList, [uri])
                                .then(function (data)
                                {
                                    console.log("\tadded " + name + " to good playlist")
                                }, function (err)
                                {
                                    console.log("\tfailed to add " + name + " to good playlist")
                                });
                        }
                        //if score still in range
                        else
                        {
                            console.log(name + " (" + prevVal + " -> " + bot.voteScores.get(uri) + ")");
                        }

                        //save to file
                        bot.saveVoteMode();

                        // Skip User’s Playback To Next Track
                        bot.spotifyApi.skipToNext().then(function ()
                        {
                            // console.log('Skip to next');
                        }, function (err)
                        {
                            //if the user making the request is non-premium, a 403 FORBIDDEN response code will be returned
                            console.log('failed to skip during vote mode');
                        });
                    }, function (err)
                    {
                        console.log('couldn\'t get current song');
                    });
                }
                else
                {
                    console.log("User is not playing anything, or doing so in private.");
                }
            }, function (err)
            {
                console.log('couldn\'t get current playback state');
            });
        }
        reaction.users.remove(user);
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