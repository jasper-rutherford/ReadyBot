const Discord = require('discord.js');
const SpotifyWebApi = require('spotify-web-api-node');
const client = new Discord.Client();
const fs = require('fs');
const express = require('express');

const { tokenDiscord, discordToken, clientId, clientSecret } = require('./data/config.json');
const open = require('opn');

const app = express();
const { Pool } = require('pg');
const { format } = require('date-fns');
const { prevSong, nextSong, toggleInterval, barrel, help, upvote, upvoter, downvote, downvoter, order, orderer, shuffle, shuffler, reverse, reverser, create, creater, requestDelete, requester, confirmDelete, rejectDelete } = require('./actions');
const { relayMsgToJaspa } = require('./helpers');
const { adminCommands, nonAdminCommands, sendBallots } = require('./commands');
const { setSpotifyBot, addSongsToPlaylist } = require('./spotify');
const { exec } = require('child_process');
const { promisify } = require('util');
const execAsync = promisify(exec);

const interval = "2 months"; // the range of time to include song votes in the query when not sorting by all time

//object that lets me send stuff to other files and still do references to this one. I also do my functions here apparently 
var bot = {
    testbuild: true, // true is correct for arbie. false will awaken ReadyBot from his slumber. dont do that.
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
    admins: [
        '130880023069589505',
        '914641118308757574'
    ],

    // credentials are optional /////this comment is from the template I built off of. Maybe it is true? Maybe not.
    spotifyApi: new SpotifyWebApi({
        clientId: clientId,
        clientSecret: clientSecret,
        redirectUri: 'http://localhost:8888/callback'
    }),
    spotifyUserID: '446i69szgjkow87ew9yjbbhnn',             //my user id

    //NEW 12/17 - keep
    commandMessage: null,                                   // the message from the user which requested a command
    spotifyChannel: '904467973434134589',                   // default location to send ballot 
    themeToDelete: undefined,                               // used to confirm that a theme should be deleted

    //new as of 2/13 (multi voting update)
    multiThemes: [],                                        // stores the themes and their info (name, emoji, playlistID)
    multiDefaultSongScore: 0,                               // the default score a song should have for any theme
    multiVoteMessage: null,                                 // the message which the user can react to for voting on themes/scores
    multiUtilityMessage: null,                              // the message which the user can react to for doing various utility operations (skip, back, order, shuffle)
    utilityEmojis:                                          // the emoji who perform actions for the utility message
        ["⏮", "⬆", "⬇", "⏭", "🔼", "🔀", "🔽", "📅", "🆕", "🗑", "🥫", "❔", "📜"],
    deletingEmoji: null,                                    // the emoji to be deleted (used to warn the user/prevent accidental deletion)
    deleteMessage: null,                                    // the message warning the user about their potential deletion
    deleteEmojis: ["✅", "❌"],                             // the emoji options for on the delete warning message

    baseInterval: interval,
    queryInterval: interval,                                // the range of time to include song votes in the query. default to interval
    barrelID: '4jCZqEM3AdWj3uSpjuY9IK',                     // the playlistID of the barrel playlist
    minScore: 0,

    mostRecentOrderTime: undefined,                         // the last time that the 🦥 playlist was ordered
    autoOrderPeriodically: false,
    autoOrderInterval: 1000 * 60 * 60 * 24 * 3,

    // a map of emoji that can be reacted to the utility message to immediately perform an action
    actions: new Map([
        ["⏮", prevSong],
        ["⬆", upvote],
        ["⬇", downvote],
        ["⏭", nextSong],
        ["🔼", order],
        ["🔀", shuffle],
        ["🔽", reverse],
        ["📅", toggleInterval],
        ["🆕", create],
        ["🗑", requestDelete],
        ["🥫", barrel],
        ["❔", help],
        ["✅", confirmDelete],
        ["❌", rejectDelete],
        ["📜", sendBallots]
    ]),

    currentAction: upvoter,                                      // the set action to be performed when an emoji is reacted to the song message (defaults to upvote)

    modes: new Map([
        [upvoter, "UPVOTE"],
        [downvoter, "DOWNVOTE"],
        [orderer, "ORDER"],
        [shuffler, "SHUFFLE"],
        [reverser, "REVERSE"],
        [creater, "CREATE"],
        [requester, "DELETE"],
    ]),

    lastTime: undefined,

    initialUpdates: function () {
       kickOffTokenRefresh()
    },

    loadSpot: async function () {

        // dont worry about backing up the db for the test build
        if (!bot.testbuild) {
            // backup the database and push it to git
            await backupAndPushToGit();

            // start the backup interval
            setInterval(backupAndPushToGit, 1000 * 60 * 60 * 24); // 24 hours
        }
        
        // set the spotify bot
        setSpotifyBot(bot)

        // test stuff
        bot.testStuff();

        // load themes/songs in from the file
        bot.readFromFile();

        // send a message to the spotify channel so that I know the last time the bot was started
        let channel = bot.client.channels.cache.get(bot.spotifyChannel)
        channel.send(`Arbie started at ${format(new Date(), "yyyy-MM-dd HH:mm:ss.SSS")}`)

        // send the ballots
        sendBallots(bot)
    },

    //gets the list of emojis from the list of themes
    getThemojis: function () {
        let emojis = []
        for (let theme of bot.multiThemes) {
            emojis.push(theme.emoji)
        }
        return emojis
    },

    addTheme(themeName) {
        bot.themes.push(themeName);
        bot.saveToFile();
    },

    // saves the mapping of themoji to playlistID to file
    saveToFile: function () {
        console.log(`Saving themoji mappings to file`)

        var wrapper =
        {
            themes: bot.multiThemes,
            mostRecentOrderTime: bot.mostRecentOrderTime
        }

        //where to save to
        var fileName = './data/spotify/themoji.json';

        //saves the thing to the file
        fs.writeFileSync(fileName, JSON.stringify(wrapper, null, 4), e => {
            if (e) throw e;
        });

        //log to console
        console.log(`Saved themoji mappings to file`)
    },

    readFromFile: function () {
        console.log("reading themoji mappings from file")

        //read in wrapped themes/songs
        let wrapper = JSON.parse(fs.readFileSync('./data/spotify/themoji.json'));

        bot.multiThemes = wrapper.themes

        bot.mostRecentOrderTime = wrapper.mostRecentOrderTime

        console.log("read themoji mappings from file")
    },

    //finds the theme with the provided emoji and returns that theme's playlistID (null if emoji not found)
    themePlaylistIDFromEmoji: function (emoji) {
        for (let theme of bot.multiThemes) {
            if (theme.emoji === emoji) {
                return theme.id
            }
        }

        return null
    },

    updateUtilityMessage: function (message = null) {
        let out = ""
        if (message != null) {
            out += `${message}\n`
        }

        let intervalMessage = ` | ${bot.queryInterval == "" ? "All Time" : "Past " + bot.queryInterval}`
        let messageContent = `[Current Mode: ${bot.getCurrentUtilityMode()}${intervalMessage}]`
        bot.multiUtilityMessage.edit(`${out}${messageContent}`)
    },

    updateVoteMessage: function (message) {
        console.log("updating vote message")
        bot.multiVoteMessage.edit(message)
    },

    //reacts all emojis from the list of themes onto the provided message
    reactAll(emojis, message) {
        if (emojis.length == 0) {
            //done
            return
        }

        //pop one emoji from the list, create a new list with all remaining emojis
        let emoji = emojis[0]
        let remainingEmojis = []
        for (let i = 1; i < emojis.length; i++) {
            remainingEmojis.push(emojis[i])
        }

        //react the emoji to the message, then react the rest
        message.react(emoji).then(() => this.reactAll(remainingEmojis, message))
    },

    testStuff: function () {
        // use this method for testing shit
    },

    //gets a list of all the adjustments that need to be made to the old list to make it match the new list
    compareUriLists(playlistID, oldUriList, newUriList) {
        let adjustments = [];

        //for all uri's in the old list
        for (let oldIndex in oldUriList) {
            //get each uri
            let oldUri = oldUriList[oldIndex];

            //if the new list doesn't contain that uri
            if (!newUriList.includes(oldUri)) {
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

        if (clears > 0) {
            console.log(`identified ${clears} songs to be cleared from playlist [${playlistID}]`);
        }

        //for all uri's in the new list
        for (let newIndex in newUriList) {
            //get each uri
            let newUri = newUriList[newIndex];

            //if the old list doesn't contain that uri
            if (!oldUriList.includes(newUri)) {
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

        if (adds > 0) {
            console.log(`identified ${adds} songs to be added to playlist [${playlistID}]`);
        }

        return adjustments;
    },

    // if the song isn't yet in the database, add it to the barrel. TODO: this is a shit idea. check if it's in the barrel, and add it if it's not in there. 
    ensureSongIsInBarrel: function (uri, name) {
        // dont support local songs
        if (uri.indexOf("spotify:local") != -1) {
            console.log(`${name} is local and unsupported`);
            bot.updateVoteMessage(`${name} is local and unsupported`)
        }

        return new Promise((resolve, reject) => {
            // check if any record of the song exists in the database
            let queryStatement = `SELECT * FROM scores WHERE spotify_uri = '${uri}'`;

            bot.query(queryStatement).then((results) => {
                // if it exists, resolve
                if (results.rows.length > 0) {
                    resolve()
                }
                // if it doesn't exist, add it to the barrel playlist
                else {
                    console.log("song not yet in the barrel, adding it")
                    return addSongsToPlaylist(bot.barrelID, [uri])
                }
            })
                .then(() => {
                    console.log("ensured song exists")
                    resolve()
                })
                .catch((error) => {
                    console.log("Error ensuring song exists")
                    reject(error)
                })
        })
    },

    query: function (queryStatement) {
        return new Promise((resolve, reject) => {
            const pool = new Pool({
                user: 'arbie',
                host: 'localhost',
                database: 'songs',
                password: 'arbie',
            });

            pool.query(queryStatement, (error, results) => {
                if (error) {
                    console.error('Error executing query:', error);
                    reject(error)
                } else {
                    console.log('successfully queried: ', queryStatement);
                    resolve(results)
                }
            });


            pool.end();
        })
    },

    logScore: function (uri, name, emoji, score) {
        return new Promise((resolve, reject) => {
            let queryStatement = `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('${uri}', '${score}', '${name.replace(/'/g, "''")}', '${format(new Date(), "yyyy-MM-dd HH:mm:ss.SSS")}', '${emoji}')`;
            bot.ensureSongIsInBarrel(uri, name)
                .then(() => this.query(queryStatement))
                .then((results) => bot.getSongScores(uri, name, emoji))
                .then((scores) => {
                    resolve(scores)
                })
                .catch((error) => {
                    console.log("Error logging score")
                })
        })
    },

    orderedUris: function (emoji) {
        let query = ` 
        WITH FilteredScores AS (
        -- Step 1: Filter records by the specified emoji and time interval
        SELECT
            spotify_uri,
            song_name,
            score,
            stamp
        FROM scores
        WHERE themoji = '${emoji}'
            AND stamp >= NOW() - INTERVAL '${bot.queryInterval}'
        ),
        AggregatedData AS (
        -- Step 2: Aggregate to get total score and median timestamp for each unique URI
        SELECT
            spotify_uri,
            song_name,
            SUM(score) AS total_score,
TO_TIMESTAMP(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM stamp) DESC)) AS median_timestamp
    


        FROM FilteredScores
        GROUP BY spotify_uri, song_name
        )
        -- Step 3: Sort by total score (descending), and median timestamp (descending) in case of ties
        SELECT
        spotify_uri,
        song_name,
        total_score,
        median_timestamp
        FROM AggregatedData
        ORDER BY total_score DESC, median_timestamp DESC;
        `

        return new Promise((resolve, reject) => {
            this.query(query).then((results) => {

                console.log(`song name, score (${bot.queryInterval == "" ? "All time" : "Last " + bot.queryInterval}):`)
                let uris = []

                for (let result of results.rows) {
                    uris.push(result.spotify_uri)

                    console.log(result.song_name, result.total_score)
                }

                resolve(uris)
            })
                .catch((error) => {
                    console.log("Error getting ordered uris")
                    reject(error)
                })
        })
    },

    getSongScores: function (uri, name, themoji) {
        let query = `
        SELECT
            SUM(score) AS total_score,
            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '${bot.baseInterval}' THEN score ELSE 0 END) AS interval_score
        FROM scores
        WHERE spotify_uri = '${uri}'
        
        AND themoji = '${themoji}';`

        return new Promise((resolve, reject) => {
            this.query(query).then((results) => {
                let output = {
                    name: name,
                    interval_score: results.rows[0].interval_score,
                    total_score: results.rows[0].total_score,
                }

                console.log("retrieved scores for uri/themoji " + uri + "/" + themoji + ":")
                console.log(output)

                resolve(output)
            })
                .catch((error) => {
                    console.log("Error getting score for uri " + uri)
                    reject(error)
                })
        })
    },

    getCurrentUtilityMode() {
        return bot.modes.get(bot.currentAction)
    },

    handleCommand(message) {
        // splits the message into words after the prefix
        const words = message.content.slice(bot.prefix.length).split(/ +/);
        const command = words.shift().toLowerCase();

        if (message.channel.type != 'dm' && message.channel.type != 'text') {
            console.log("message sent in unsupported channel type: " + message.channel.type)
            return
        }

        // admins have access to a bigger command pool (which includes all non-admin commands)
        if (bot.admins.includes(message.author.id) && adminCommands.get(message.channel.type).has(command)) {
            adminCommands.get(message.channel.type).get(command)(bot, message, words)
        }
        else if (nonAdminCommands.get(message.channel.type).has(command)) {
            nonAdminCommands.get(message.channel.type).get(command)(bot, message, words)
        }
    },

    handleNonCommand(message) {
        // only dm's are supported
        if (message.channel.type != 'dm') return

        // non admin messages are forwarded to jasper
        if (!bot.admins.includes(message.author.id)) {
            relayMsgToJaspa(bot, message)
        }

        // admins receive a response
        if (bot.admins.includes(message.author.id)) {
            message.channel.send('❤️');
        }
    }
}

// switches the variables to the test bot's stuff
if (bot.testbuild) {
    bot.tokenDiscord = discordToken;
    bot.guildID = '254631721620733952';
    bot.jaspaDM = '755291736871272490';
    bot.botID = '754865264390176839';
}

client.once('ready', () => {
    bot.initialUpdates();

    

    if (bot.testbuild) {
        console.log('<test build>');
    }
});

client.on('message', message => {
    // ignore messages from itself
    if (message.author.bot) return;

    // handle commands
    if (message.content.startsWith(bot.altPrefix)) {
        bot.handleCommand(message)
    }

    // handle non-commands
    else {
        bot.handleNonCommand(message)
    }
});

client.on('messageReactionAdd', (reaction, user) => {
    // only handle reactions from admins
    if (!bot.admins.includes(user.id)) return

    // ignore custom reactions
    if (reaction.emoji.createdAt != null) {
        bot.updateVoteMessage("Custom Emojis are not supported")
        console.log('Custom Emojis are not supported')
        return
    }

    // handle utility actions
    if (reaction.message.id === bot.multiUtilityMessage?.id && bot.actions.has(reaction.emoji.name)) {
        bot.actions.get(reaction.emoji.name)(bot)
    }

    // handle vote actions 
    if (reaction.message.id === bot.multiVoteMessage?.id) {
        bot.currentAction(bot, reaction.emoji.name)
    }

    // handle delete message confirmation
    if (reaction.message.id === bot.deleteMessage?.id && bot.deleteEmojis.includes(reaction.emoji.name)) {
        bot.actions.get(reaction.emoji.name)(bot)
    }

    reaction.users.remove(user);
    return
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

// the login page is called by the user. it redirects to a spotify login page
app.get('/login', (req, res) => {
    res.redirect(bot.spotifyApi.createAuthorizeURL(scopes));
});

// the callback page is called by spotify after you log in. it saves the refresh token to file and then closes after a few seconds
app.get('/callback', (req, res) => {
    console.log("successfully logged into spotify")

    const error = req.query.error;
    const code = req.query.code;

    if (error) {
        console.error('Callback Error:', error);
        res.send(`Callback Error: ${error}`);
        return;
    }

    bot.spotifyApi
        .authorizationCodeGrant(code)
        .then(data => {
            // the refresh_token
            const refresh_token = data.body['refresh_token'];
            console.log("Generated refresh token")

            // save refresh token to file
            fs.writeFileSync('spotify_refresh_token.txt', refresh_token);
            console.log("refresh token saved to file")

            // try to kick off the rest of startup
            kickOffTokenRefresh()

            // send an html page to the user that closes after a few seconds
            const htmlResponse = `
                <html>
                <head>
                    <title>Redirecting...</title>
                    <style>
                        #timer {
                            font-size: 20px;
                            text-align: center;
                            margin-top: 100px;
                        }
                    </style>
                </head>
                <body>
                    <div id="timer">Successfully logged into Spotify! Closing page in <span id="countdown">5</span> seconds...</div>
                    <script>
                        const countdownElement = document.getElementById('countdown');
                        let countdown = 5; // Change this value to adjust the countdown duration

                        function updateCountdown() {
                            countdown--;
                            countdownElement.textContent = countdown;
                            
                            if (countdown === 0) {
                                window.close();
                            } else {
                                setTimeout(updateCountdown, 1000); // Update countdown every second
                            }
                        }

                        // Start the countdown
                        updateCountdown();
                    </script>
                </body>
                </html>
            `;
            res.send(htmlResponse);
        })
        .catch(error => {
            console.error('Error getting Tokens:', error);
            res.send(`Error getting Tokens: ${error}`);
        });
});

app.listen(8888, () =>
    console.log(
        'HTTP Server up, http://localhost:8888/login is now available.'
    )
);
client.login(bot.tokenDiscord);

let refreshTheAccessToken = () => {
    // return a promise
    return new Promise((resolve, reject) => {
        // read the refresh token from file
        const refreshToken = fs.readFileSync('spotify_refresh_token.txt', 'utf8');

        // if the refresh token is invalid then reject
        if (refreshToken == "") {
            console.log("No refresh token found")
            reject()
        }

        // set the refresh token
        bot.spotifyApi.setRefreshToken(refreshToken);

        // refresh the access token
        bot.spotifyApi.refreshAccessToken().then(
            function (data) {
                console.log('The access token has been refreshed');

                // Save the access token so that it's used in future calls
                bot.spotifyApi.setAccessToken(data.body['access_token']);
                resolve()
            },
            function (err) {
                console.log('Could not refresh access token', err);
                reject()
            }
        );
    })
}

// refreshes the access token and kicks off the rest of startup
// assumes that the refresh token exists in the refresh token file
let kickOffTokenRefresh = () => {
    // if the refresh token file doesn't exist or is empty
    if (!fs.existsSync('spotify_refresh_token.txt') || fs.readFileSync('spotify_refresh_token.txt', 'utf8') == "") {
        // log that there is no refresh token
        console.log("No refresh token found. attempting to open login page.")
       
        // open the login page
        open('http://localhost:8888/login')
    }
    // if the refresh token file exists and is not empty
    else {
        console.log("refresh token found")

        // use the refresh token to get an access token.
        refreshTheAccessToken().then(() => {
            // now that spotify is authenticated we can kick off the rest of startup
            bot.loadSpot();

            // kick off the interval to refresh the access token. yeah theres a little bit of some 
            setInterval(refreshTheAccessToken, 1000 * 60 * 60); 
        })
        .catch(() => {
            console.log("Error refreshing access token")
        } )
    }
}

async function backupAndPushToGit() {
    try { 
        console.log("---------backing up database---------")
        // Run pg_dump to backup the database
        await execAsync(`pg_dump -d songs -f ./arbie.sql`);
        console.log('Backed up to ./arbie.sql');

        // Add the backup file to git
        await execAsync(`git add ./arbie.sql`);
        console.log('Backup file added to git.');
        
        // add the log file to git
        await execAsync(`git add ./log.txt`);
        console.log('Log file added to git.');

        // Commit the changes
        await execAsync('git commit -m "Database backup"');
        console.log('Backup changes committed.');

        // Push the commit to the remote repository
        const { stdout } = await execAsync('git push');
        console.log(`git push results: [${stdout}]`);

        console.log('Backup successfully pushed to GitHub.');
        console.log("-------done backing up database------")
    } catch (error) {
        console.error(`An error occurred: ${error}`);
    }
}
