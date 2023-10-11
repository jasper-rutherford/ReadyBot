// module.exports = {
//     name: 'extendplaylist',
//     secret: false,
//     spam: false,
//     description: "Takes a playlist and extends it into another playlist",
//     bot: undefined,
//     execute(message, args, bot)
//     {
//         this.bot = bot;
//         if (message.author.id === bot.jaspaID)
//         {
//             let fromPlaylistID = args.shift();
//             let toPlaylistID = args.shift();
            
//             if (fromPlaylistID === undefined || fromPlaylistID === undefined)
//             {
//                 message.channel.send("\\extendplaylist <fromPlaylistID> <toPlaylistID>");
//             }
//             else
//             {
//                 console.log("Extending playlist", fromPlaylistID);

//                 //get the tracks in the playlist
//                 this.read(fromPlaylistID)

//                 //get a list of all the albums from the list of tracks
//                 .then((tracks) => this.convertToAlbums(tracks))

//                 //get all the tracks from all the albums
//                 .then((albums) => this.getTracksFromAlbums(albums))

//                 //add all the tracks to the playlist
//                 .then((tracks) => this.sendTracksToPlaylist(tracks, toPlaylistID))

//                 //error handling
//                 .catch((error) => console.log(error));
//             }
//         }
//     }, 
//     read(playlistID)
//     {
//         console.log("reading in playlist", playlistID);

//         //return a promise
//         return new Promise((resolve, reject) =>
//         {
//             //read info from the playlist 
//             this.bot.spotifyApi.getPlaylist(playlistID)

//             //send the length of the playlist into this.reading so that reading knows how much to scan
//             .then((playlistInfo) => this.reading(playlistInfo.body.tracks.total, playlistID))
            
//             //resolve the tracks back out to the promise
//             .then((tracks) => resolve(tracks))

//             //error handling 
//             .catch((error) => reject(error));
//         });
//     },
//     reading(goal, playlistID, totTracks = [], newTracks = [])
//     {
//         console.log("reading a chunk");

//         //add the next batch of tracks onto the total list of tracks
//         Array.prototype.push.apply(totTracks, newTracks);

//         //return a promise 
//         return new Promise((resolve, reject) =>
//         {
//             //if we have read all tracks, resolve with the tracks
//             if (totTracks.length == goal)
//             {
//                 resolve(totTracks);
//             }
//             //otherwise
//             else
//             {
//                 //get the next batch of tracks
//                 this.bot.spotifyApi.getPlaylistTracks(playlistID, {offset: totTracks.length})

//                 //pass that next batch into the next step of this.reading
//                 .then((tracksInfo) => this.reading(goal, playlistID, totTracks, tracksInfo.body.items))

//                 //the results of that step will be the final results (recursion go brrr)
//                 .then((result) => resolve(result))

//                 //error handling (sHouLd NeVeR hApPeN)
//                 .catch((error) => reject(error));
//             }
//         })
//     },
//     convertToAlbums(tracks)
//     {
//         console.log("converting to albums");

//         //initial set of albums is empty
//         let albums = [];

//         //loop through all tracks
//         for (let i = 0; i < tracks.length; i++) 
//         {
//             //get each track's album
//             let album = tracks[i].track.album.id;

//             //if the album isn't in the set of albums
//             if (!albums.includes(album) && album != null && album != undefined)
//             {
//                 //add it to the set
//                 albums.push(album);
//             }
//         }

//         //return the set of albums
//         return albums;
//     }, 
//     getTracksFromAlbums(albums, albumNum = 0, totTracks = [], newTracks = [])
//     {
//         if (albumNum % 50 == 0)
//         {
//             console.log("getting tracks from albums (" + (albums.length - albumNum) + " albums remaining)");
//         }

//         //add the next batch of tracks onto the total list of tracks
//         Array.prototype.push.apply(totTracks, newTracks);

//         //return a promise 
//         return new Promise((resolve, reject) =>
//         {
//             //if we have checked all albums, resolve with the tracks
//             if (albums.length == albumNum)
//             {
//                 resolve(totTracks);
//             }
//             //otherwise
//             else
//             {
//                 //get the next batch of tracks
//                 this.bot.spotifyApi.getAlbumTracks(albums[albumNum])

//                 //pass that next batch into the next step of this.getTracksFromAlbums
//                 .then((tracksInfo) => this.getTracksFromAlbums(albums, albumNum + 1, totTracks, tracksInfo.body.items))

//                 //the results of that step will be the final results (recursion go brrr)
//                 .then((result) => resolve(result))

//                 //error handling (sHouLd NeVeR hApPeN)
//                 .catch((error) => reject(error));
//             }
//         })
//     },
//     sendTracksToPlaylist(tracks, playlistID, offset = 0)
//     {
//         console.log("sending tracks to playlist (" + (tracks.length - offset) + " remaining)");

//         //check that there are still tracks to push
//         if (offset <= tracks.length)
//         {
//             //empty list of track URI's
//             let trackUris = [];

//             //add up to the next 100 tracks' uri's to a list 
//             for (let i = 0; i < 100 && offset + i < tracks.length; i++)
//             {
//                 trackUris.push(tracks[offset + i].uri);
//             }

//             // console.log(trackUris);

//             //add this batch of tracks to the playlist
//             this.bot.spotifyApi.addTracksToPlaylist(playlistID, trackUris)

//             //queue up the next batch of tracks
//             .then(() => this.sendTracksToPlaylist(tracks, playlistID, offset + 100))

//             //error handling
//             .catch((error) => console.log(error));
//         }
//         else
//         {
//             console.log("finished extending playlist");
//         }
//     }
// }  