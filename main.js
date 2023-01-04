const Discord = require('discord.js');
const SpotifyWebApi = require('spotify-web-api-node');
const client = new Discord.Client();
const fs = require('fs');
const express = require('express');

const { tokenDiscord, testTokenDiscord, clientId, clientSecret } = require('./data/config.json');
const { resolve } = require('path');

const app = express();

//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: true,
    temp: true,
    tokenDiscord: tokenDiscord,
    prefix: '~',
    altPrefix: '\\',
    client: client,
    channelTypes: ['dm', 'text'],
    messageTypes: ['commands', 'specials'],
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

    //NEW 12/17 - keep
    barrelList: [],                                         // json friendly list of songs in the barrel 
    songlist: [],                                           // json friendly list of songs in the theme
    playlistID: null,                                       // id of the current theme's playlist
    currentTheme: '',                                       // the current theme
    themes: [],                                             // a list of all the themes
    ballotMessage: null,                                    // the message from the bot which the user reacts to 
    commandMessage: null,                                   // the message from the user which requested a command
    spotifyChannel: '904467973434134589',                   // default location to send ballot 
    defaultSongScore: 2,
    themeToDelete: undefined,                               // used to confirm that a theme should be deleted

    initialUpdates: function ()
    {
        // this shit runs right after the bot starts up, but not necessarily before or after teh spotify stuff starts happening
    },

    //i despise this helpers stuff, but removing it is just gonna have to wait.
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

        // read the barrel from spotify
        bot.readBarrelList()
        .then(() => 
        {
            //read in current theme/available themes
            let wrapper = JSON.parse(fs.readFileSync("./data/spotify/themes.json"));
            bot.currentTheme = wrapper.currentTheme
            bot.themes = wrapper.themes

            //if there is no current theme, create a default theme
            if (bot.themes.length == 0)
            {
                //send a message announcing the creation of a default theme
                bot.client.channels.cache.get(bot.spotifyChannel).send("No themes found! Creating a default theme.")

                //create a theme
                .then(sent => bot.createTheme("default", sent))        
                
                //set the theme to this new default theme
                .then(() => bot.setTheme("default"))
            }
            else
            {
                //set theme to most recent theme
                bot.setTheme(bot.currentTheme);
            }
        })
    },

    //reads the songs from the barrel into the barrel list (json friendly)
    readBarrelList: function ()
    {
        //promise time
        return new Promise((resolve, reject) =>
        {
            //update console
            console.log("Reading barrel");

            // Get the tracks from the barrel
            this.getTracks(bot.barrelID)
                .then(function (tracks)
                {
                    //convert to json friendly list of songs
                    tracks.forEach(item =>         
                    {
                        //only support non-local songs
                        if (item.track.uri.indexOf("spotify:local") == -1)
                        {
                            //json representation of the song
                            let song =
                            {
                                name: item.track.name,
                                uri: item.track.uri,
                                score: -1
                            }
                            
                            //push the song onto the barrel list
                            bot.barrelList.push(song);
                        }
                        else
                        {
                            console.log(item.track.uri + " is local and unsupported.");
                        }
                    });

                    //send an update to the console
                    console.log("Barrel has been read");

                    //barrel has been read, so resolve
                    resolve();
                })
                .catch(function (error) 
                {
                    if (error.statusCode === 500 || error.statusCode === 502)
                    {
                        console.log("Server error while reading the barrel, trying again");
                        bot.readBarrelList()
                            .then(() => resolve())
                    }
                    else
                    {
                        console.log('Something went wrong while reading the barrel! 111');
                        console.log(error);
                    }
                });
        })
    },

    getTracks(playlistID)
    {
        //return a promise
        return new Promise((resolve, reject) =>
        {
            //read info from the playlist 
            bot.spotifyApi.getPlaylist(playlistID)

                //send the length of the playlist into this.reading so that reading knows how much to scan
                .then((playlistInfo) => this.gettingTracks(playlistInfo.body.tracks.total, playlistID))

                //resolve the tracks back out to the promise
                .then((tracks) => resolve(tracks))

                //error handling 
                .catch(function (error) 
                {
                    if (error.statusCode === 500 || error.statusCode === 502)
                    {
                        //report server error
                        console.log("Server error, trying again");

                        //try again
                        this.getTracks(playlistID)

                            //resolve with results of successful attempt
                            .then((tracks) => resolve(tracks))

                            //error handling
                            .catch((error) => console.log("error while retrying this.getTracks\n", error));
                    }
                    else
                    {
                        console.log('Something went wrong in this.getTracks');
                        console.log(error);
                    }
                });
        });
    },

    gettingTracks(goal, playlistID, totTracks = [], newTracks = [])
    {
        //add the next batch of tracks onto the total list of tracks
        Array.prototype.push.apply(totTracks, newTracks);

        console.log("reading chunk " + (1 + Math.ceil(totTracks.length / 100)) + "/" + (1 + Math.ceil(goal / 100)));

        //return a promise 
        return new Promise((resolve, reject) =>
        {
            //if we have read all tracks, resolve with the tracks
            if (totTracks.length == goal)
            {
                resolve(totTracks);
            }
            //otherwise
            else
            {
                //get the next batch of tracks
                bot.spotifyApi.getPlaylistTracks(playlistID, { offset: totTracks.length })

                    //pass that next batch into the next step of this.reading
                    .then((tracksInfo) => this.gettingTracks(goal, playlistID, totTracks, tracksInfo.body.items))

                    //the results of that step will be the final results (recursion go brrr)
                    .then((result) => resolve(result))

                    //error handling (sHouLd NeVeR hApPeN)
                    .catch(function (error) 
                    {
                        if (error.statusCode === 500 || error.statusCode === 502)
                        {
                            //report server error
                            console.log("Server error, trying again");

                            //try again
                            bot.gettingTracks(goal, playlistID, totTracks, newTracks)

                                //resolve with the result when successful
                                .then((result) => resolve(result))

                                //error handling
                                .catch((error) => console.log("error while retrying this.gettingTracks\n", error));
                        }
                        else
                        {
                            console.log('Something went wrong in this.gettingTracks');
                            console.log(error);
                        }
                    });
            }
        })
    },

    addTheme(themeName)
    {
        bot.themes.push(themeName);
        bot.saveThemes();
    },

    saveThemes()
    {
        //what to save
        var wrapper =
        {
            currentTheme: bot.currentTheme,
            themes: bot.themes
        }

        //where to save to
        var fileName = './data/spotify/themes.json';

        //saves the thing to the file
        fs.writeFileSync(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });
    },

    saveTheme(themeName = bot.currentTheme, playlistID = bot.playlistID, songList = bot.songlist)
    {
        console.log(`Saving '${themeName}' to file`)
        //what to save
        var wrapper =
        {
            playlistID: playlistID,
            songs: songList
        }

        //where to save to
        var fileName = './data/spotify/themes/' + themeName + '.json';

        //saves the thing to the file
        fs.writeFileSync(fileName, JSON.stringify(wrapper), e =>
        {
            if (e) throw e;
        });

        //log to console
        console.log(`Saved '${themeName}' to file`)
    },

    createTheme: function (themeName, message)
    {
        return new Promise((resolve, reject) => 
        {
            console.log('Trying to create a theme called "' + themeName + '"');

            //if theme already exists
            if (bot.themes.indexOf(themeName) != -1)
            {
                console.log("Tried to create a theme that already exists.");
            }
            //if theme does not exist
            else
            {
                //add theme to list of themes
                bot.addTheme(themeName); 
    
                //build the new list, each song defaults to a value of bot.defaultSongScore
                let newList = bot.buildNewList();
                
                //create a playlist                             probably messier than it could be :/
                bot.createPlaylist(themeName)
                .then ((playlistStuff) =>
                {
                    //save the created theme to file
                    bot.saveTheme(themeName, playlistStuff.playlistID, newList)

                    //add all songs to the playlist
                    bot.addSongsToPlaylist(playlistStuff.playlistID, newList)
    
                    //send link to playlist
                    .then(() =>
                    {
                        message.channel.send("Here's " + themeName + ":\n" + playlistStuff.playlistURL)
                        resolve()
                    })
                });
            }
        })
    },

    createPlaylist: function (themeName)
    {
        return new Promise((resolve, reject) => 
        {
            //create the playlist
            bot.spotifyApi.createPlaylist(themeName, { public : true })

            //resolve with the playlistinfo
            .then((playlistInfo) => 
            {
                console.log(`Here's ${themeName}:\n${playlistInfo.body.external_urls.spotify}`)
                resolve(
                {
                    playlistID: playlistInfo.body.id, 
                    playlistURL: playlistInfo.body.external_urls.spotify
                }) 
            })

            //errors :)
            .catch((error) => 
            {
                if (error.statusCode === 500 || error.statusCode === 502)
                {
                    console.log("Server error, trying again");
                    bot.createPlaylist(themeName)
                    .then((playlistStuff) => resolve(playlistStuff))
                }
                else
                {
                    console.log("failed to create playlist - ")
                    console.log(error)
                }
            })
        })
    },

    //creates a fresh list of songs from the barrel, each song with a default score of bot.defaultSongScore
    buildNewList()
    {
        list = [];

        for (var i = 0; i < bot.barrelList.length; i++)
        {
            let barrelSong = bot.barrelList[i];

            listSong = 
            {
                name: barrelSong.name,
                uri: barrelSong.uri,
                score: bot.defaultSongScore
            }

            list.push(listSong);
        }

        return list
    },

    //gets the song which corresponds with the provided uri from the provided list of songs
    //returns null if uri is not found
    getSongByUri(uri, songs)
    {
        for (let i in songs)
        {
            let song = songs[i]

            if (song.uri === uri)
            {
                return song
            }
        }
        
        return null;
    },

    //upon resolve, the provided uri will be in the barrel playlist, the barrel list, and the song list
    ensureUriIsInBarrel(uri)
    {
        return new Promise((resolve, reject) =>
        {

            // this is hard :(
            // todo :/
            if (bot.getSongByUri(uri, bot.barrelList) === null)
            {
                console.log("that song's not in the barrel, thats on the to do list. ignored for now.")
                reject("Song not in barrel")
            }
            resolve(uri)

            // //if song not in barrel
            // if (bot.getSongByUri(uri, bot.barrelList) === null)
            // {
            //     //alert user somehow TODO
            //     console.log("todo")

            //     // add to barrel playlist
            //     bot.addUriToPlaylist(uri, bot.barrelID)

            //     //add to theme playlist
            //     .then(() => bot.addUriToPlaylist(uri, bot.playlistID))

            //     //update bot.barrelList and bot.songList
            //     .then(() => 
            //     {
                    
            //     })

            //     // add to barrel list
            //     // add to song list
            // }
        })
    },

    //takes a list of songs, returns a list of all the songs that have non-negative scores
    nonNegativeScores(songs)
    {
        let nonNegativeScores = []

        for (let songIndex in songs)
        {
            let song = songs[songIndex]

            if (song.score >= 0)
            {
                nonNegativeScores.push(song)
            }
        }
        
        return nonNegativeScores
    },

    addUriToPlaylist(uri, playlistID)
    {
        return bot.addSongsToPlaylist(playlistID, [{uri: uri}])
    },

    removeUriFromPlaylist(uri, playlistID)
    {
        let adjustments = []
        
        adjustments.push(
        {
            adjustment: "clear",
            id: playlistID,
            uri: uri
        })

        bot.adjust(adjustments)
    },

    addSongsToPlaylist(playlistID, songs)
    {
        return new Promise((resolve, reject) => 
        {
            //convert to list of uris
            let uris = bot.convertSongsToUris(songs)

            console.log("getting adjustments")

            //get adjustments
            let adjustments = this.compareUriLists(playlistID, [], uris);
            console.log("got adjustments")

            //adjust them
            this.adjust(adjustments)

            //resolve
            .then(() => {
                console.log("adjusted adjustments")
                resolve()
            })

            //error
            .catch((error) => console.log("Errored: ", error))
        })
    },

    removeSongsFromPlaylist(playlistID, songs)
    {
        return new Promise((resolve, reject) => 
        {
            //convert to list of uris
            let uris = bot.convertSongsToUris(songs)

            console.log("getting adjustments")

            //get adjustments
            let adjustments = this.compareUriLists(playlistID, uris, []);
            console.log("got adjustments")

            //adjust them
            this.adjust(adjustments)

            //resolve
            .then(() => {
                console.log("adjusted adjustments")
                resolve()
            })

            //error
            .catch((error) => console.log("Errored: ", error))
        })
    },

    updateBallot(update)
    {
        bot.ballotMessage.edit(`🎶 Current Theme: [${bot.currentTheme}] 🎶\n${update}`)
    },

    setTheme: function (theme)
    {
        //check if theme exists
        if (this.themes.indexOf(theme) != -1)
        {
            //only save the current theme if there is a current theme that has been set properly
            if (bot.currentTheme.length != 0 && bot.playlistID != null)
            {
                //save current theme
                bot.saveTheme(bot.currentTheme, bot.playlistID, bot.songlist)
            }

            //read new theme from file
            let wrapper = JSON.parse(fs.readFileSync(`./data/spotify/themes/${theme}.json`));

            bot.playlistID = wrapper.playlistID
            bot.songlist = wrapper.songs
            bot.currentTheme = theme

            console.log(`Wrapper had the following id: ${bot.playlistID} aka ${wrapper.playlistID}`)

            // --- check vs barrel, add new songs
            
            //build adjustments
            let oldUriList = bot.convertSongsToUris(bot.songlist)
            let newUriList = bot.convertSongsToUris(bot.barrelList)
            let adjustments = bot.compareUriLists(bot.playlistID, oldUriList, newUriList)

            //adjust song list
            for (let adjIndex in adjustments) 
            {
                let adjustment = adjustments[adjIndex]

                //for each add adjustment
                if (adjustment.adjustment === "add")
                {
                    //add the song that matches the adjustment to the songlist
                    let song = bot.getSongByUri(adjustment.uri, bot.barrelList)
                    bot.songlist.push
                    ({
                        name: song.name,
                        uri: adjustment.uri,
                        score: bot.defaultSongScore
                    })
                }
            }

            //adjust playlist
            bot.adjust(adjustments)

            .then(() => 
            {
                //save the themes
                bot.saveThemes()

                //send ballot
                bot.helpers('sendballot', bot.client.channels.cache.get(bot.spotifyChannel));

                //alert the console 
                console.log("Theme has been set to", theme);
            })
        }
        else
        {
            console.log("theme does not exist");
        }
    },

    convertSongsToUris: function (songs)
    {
        let uris = []

        for (let songIndex in songs)
        {
            let song = songs[songIndex]
            uris.push(song.uri);
        }

        return uris
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

    adjust: function (adjustments)
    {
        // console.log("this.adjustments received:\n", adjustments);
        return new Promise((resolve, reject) =>
        {
            //only adjust things if there are things to adjust
            if (adjustments.length > 0)
            {
                //get a bunch of uris to send out to the api in one batch

                //a list for all the uris in the batch
                let uris = [];

                //a list of all adjustments in the batch (used for retrying on server errors)
                let batchAdjustments = [];

                //grab an adjustment from the list (all adjustments in this batch will be similar to this one)
                let template = adjustments[0];

                //remove that adjustment from the list
                adjustments.splice(0, 1);

                //add it to relevant lists
                uris.push(template.uri);
                batchAdjustments.push(template);

                //loop through all other adjustments
                for (let i = 0; i < adjustments.length && uris.length < 100; i++)
                {
                    //the adjustment at this step
                    let temp = adjustments[i];

                    //if the adjustment at this step matches the template
                    if (temp.adjustment === template.adjustment && temp.id === template.id)
                    {
                        //remove it from the list of adjustments
                        adjustments.splice(i, 1);
                        i--

                        //dont support songs that are local
                        if (temp.uri.indexOf("spotify:local") == -1)
                        {
                            //add its uri to the relevant lists
                            uris.push(temp.uri);
                            batchAdjustments.push(temp);
                        } 
                        else
                        {
                            console.log(temp.uri + " is local and unsupported.");
                        }
                    }
                }

                //adjust the playlist via the batch

                //if the adjustment is a clear
                if (template.adjustment === "clear")
                {
                    //convert the uris to a list of objects (api is stupid)
                    let objectUris = [];

                    uris.forEach(uri =>
                    {
                        objectUris.push({ uri: uri });
                    });

                    console.log("removing " + objectUris.length + " songs from playlist " + template.id);

                    //remove the provided uris from the template's playlist
                    bot.spotifyApi.removeTracksFromPlaylist(template.id, objectUris)

                        //on success, adjust the remaining adjustments
                        .then(() => this.adjust(adjustments))

                        //after all other adjustments have been adjusted, resolve 
                        .then((() => resolve()))

                        //error handling
                        .catch(function (error) 
                        {
                            //if it is a server error we can just retry
                            if (error.statusCode === 500 || error.statusCode === 502)
                            {
                                //report server error to console
                                console.log("Server error, trying again");

                                //add batch adjustments back into the list of adjustments
                                Array.prototype.push.apply(adjustments, batchAdjustments);

                                //retry
                                bot.adjust(adjustments)

                                    //resolve
                                    .then(() => resolve())

                                    //report error (is this dead code?)
                                    .catch((error) => console.log("error while retrying a clear in this.adjust", error));
                            }
                            else
                            {
                                console.log('error while clearing in this.adjust');
                                console.log(error);
                            }
                        });
                }
                //if this adjustment is an addition
                if (template.adjustment === "add")
                {
                    console.log("adding " + uris.length + " songs to playlist " + template.id);

                    //add the provided uris to the template's playlist
                    bot.spotifyApi.addTracksToPlaylist(template.id, uris)

                        //on success, adjust the remaining adjustments
                        .then(() => this.adjust(adjustments))

                        //after all other adjustments have been adjusted, resolve 
                        .then((() => resolve()))

                        //error handling
                        .catch(function (error) 
                        {
                            //if it is a server error we can just retry
                            if (error.statusCode === 500 || error.statusCode === 502)
                            {
                                //report server error to console
                                console.log("Server error, trying again");

                                //add batch adjustments back into the list of adjustments
                                Array.prototype.push.apply(adjustments, batchAdjustments);

                                //retry
                                bot.adjust(adjustments)

                                    //resolve
                                    .then(() => resolve())

                                    //report error (is this dead code?)
                                    .catch((error) => console.log("error while retrying an add in this.adjust", error));
                            }
                            else
                            {
                                console.log('error while adding in this.adjust');
                                console.log(error);
                            }
                        });
                }
            }
            else
            {
                console.log("All adjustments adjusted.\n")
                resolve();
            }
        });
    },

    testStuff: function ()
    {
        // use this method for testing shit
    },

    //gets a list of all the adjustments that need to be made to the old list to make it match the new list
    compareUriLists(playlistID, oldUriList, newUriList)
    {
        let adjustments = [];

        //for all uri's in the old list
        for (let oldIndex in oldUriList) 
        {
            //get each uri
            let oldUri = oldUriList[oldIndex];

            //if the new list doesn't contain that uri
            if (!newUriList.includes(oldUri))
            {
                //add an adjustment to remove the song with that uri from the playlist
                adjustments.push(
                    {
                        adjustment: "clear",
                        id: playlistID,
                        uri: oldUri
                    });
            }
        }

        let clears = adjustments.length;

        if (clears > 0)
        {
            console.log(`identified ${clears} songs to be cleared from playlist [${playlistID}]`);
        }

        //for all uri's in the new list
        for (let newIndex in newUriList) 
        {
            //get each uri
            let newUri = newUriList[newIndex];

            //if the old list doesn't contain that uri
            if (!oldUriList.includes(newUri))
            {
                //add an adjustment to add the song with that uri to the playlist
                adjustments.push(
                    {
                        adjustment: "add",
                        id: playlistID,
                        uri: newUri
                    });
            }
        }

        let adds = adjustments.length - clears;

        if (adds > 0)
        {
            console.log(`identified ${adds} songs to be added to playlist [${playlistID}]`);
        }

        return adjustments;
    },

    //song: the song whose score is to be changed
    //diff: how much to change the score by
    changeSongScore: function (song, diff)
    {
        //change the score
        song.score = song.score + diff

        //save the updated song list to file
        bot.saveTheme()
    },
}

//switches the variables to the test bot's stuff
if (bot.testbuild)
{
    bot.tokenDiscord = testTokenDiscord;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '755291736871272490';
    bot.botID = '754865264390176839';
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

    console.log('Readybot 4: Spotify Edition 2');

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

    // if there is a ballot and this message is the ballot and the person who reacted is jasper
    if (bot.ballotMessage != null && reaction.message.id === bot.ballotMessage.id && user.id === bot.jaspaID)
    {
        //check that emoji is valid
        if (["⏬", "⬇", "⏭", "⬆", "🔀", "↕"].includes(reaction.emoji.name))
        {
            // call helper for emoji
            bot.helpers(reaction.emoji.name, {reaction: reaction, user: user});
            reaction.users.remove(user);
        }
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