let bot = undefined;

const setSpotifyBot = (b) => {
    bot = b;
}

const getTracks = (playlistID) => {
    //return a promise
    return new Promise((resolve, reject) => {
        //read info from the playlist 
        bot.spotifyApi.getPlaylist(playlistID)

            //send the length of the playlist into this.reading so that reading knows how much to scan
            .then((playlistInfo) => gettingTracks(playlistInfo.body.tracks.total, playlistID))

            //resolve the tracks back out to the promise
            .then((tracks) => resolve(tracks))

            //error handling 
            .catch(function (error) {
                if (error.statusCode === 500 || error.statusCode === 502) {
                    //report server error
                    console.log("Server error, trying again");

                    //try again
                    getTracks(playlistID)

                        //resolve with results of successful attempt
                        .then((tracks) => resolve(tracks))

                        //error handling
                        .catch((error) => console.log("error while retrying getTracks\n", error));
                }
                else {
                    console.log('Something went wrong in getTracks');
                    console.log(error);
                }
            });
    });
}

const gettingTracks = (goal, playlistID, totTracks = [], newTracks = []) => {
    //add the next batch of tracks onto the total list of tracks
    Array.prototype.push.apply(totTracks, newTracks);

    console.log("reading chunk " + (1 + Math.ceil(totTracks.length / 100)) + "/" + (1 + Math.ceil(goal / 100)));

    //return a promise 
    return new Promise((resolve, reject) => {
        //if we have read all tracks, resolve with the tracks
        if (totTracks.length == goal) {
            resolve(totTracks);
        }
        //otherwise
        else {
            //get the next batch of tracks
            bot.spotifyApi.getPlaylistTracks(playlistID, { offset: totTracks.length })

                //pass that next batch into the next step of this.reading
                .then((tracksInfo) => gettingTracks(goal, playlistID, totTracks, tracksInfo.body.items))

                //the results of that step will be the final results (recursion go brrr)
                .then((result) => resolve(result))

                //error handling (sHouLd NeVeR hApPeN)
                .catch(function (error) {
                    if (error.statusCode === 500 || error.statusCode === 502) {
                        //report server error
                        console.log("Server error, trying again");

                        //try again
                        gettingTracks(goal, playlistID, totTracks, newTracks)

                            //resolve with the result when successful
                            .then((result) => resolve(result))

                            //error handling
                            .catch((error) => console.log("error while retrying gettingTracks\n", error));
                    }
                    else {
                        console.log('Something went wrong in gettingTracks');
                        console.log(error);
                    }
                });
        }
    })
}

const getCurrentSong = () => {
    return new Promise((resolve, reject) => {
        console.log("getting current song")

        // check if a song is playing
        bot.spotifyApi.getMyCurrentPlaybackState()
            .then(function (data) {
                console.log("getting current state")
                // if a song is playling
                if (data.body && data.body.is_playing) {
                    // get current song
                    return bot.spotifyApi.getMyCurrentPlayingTrack()
                }
                else {
                    return new Promise((resolve, reject) => {
                        console.log("no song playing")
                        reject(null)
                    })
                }
            })
            .then(function (data) {
                //current song uri
                resolve(data.body.item);
            })
    })
}

const createPlaylist = (themeName) => {
    return new Promise((resolve, reject) => {
        //create the playlist
        bot.spotifyApi.createPlaylist(themeName, { public: true })

            //resolve with the playlistinfo
            .then((playlistInfo) => {
                console.log(`Here's ${themeName}:\n${playlistInfo.body.external_urls.spotify}`)
                resolve(
                    {
                        playlistID: playlistInfo.body.id,
                        playlistURL: playlistInfo.body.external_urls.spotify
                    })
            })

            //errors :)
            .catch((error) => {
                if (error.statusCode === 500 || error.statusCode === 502) {
                    console.log("Server error, trying again");
                    createPlaylist(themeName)
                        .then((playlistStuff) => resolve(playlistStuff))
                }
                else {
                    console.log("failed to create playlist - ")
                    console.log(error)
                }
            })
    })
}

const addSongsToPlaylist = (playlistID, uris) => {
    return new Promise((resolve, reject) => {
        console.log("getting adjustments")

        // get adjustments
        let adjustments = bot.compareUriLists(playlistID, [], uris);
        console.log("got adjustments")

        // adjust them
        adjust(adjustments)

            // resolve
            .then(() => {
                console.log("adjusted adjustments")
                resolve()
            })

            // error
            .catch((error) => console.log("Errored: ", error))
    })
}

const removeSongsFromPlaylist = (playlistID, uris) => {
    return new Promise((resolve, reject) => {
        console.log("getting adjustments")

        //get adjustments
        let adjustments = bot.compareUriLists(playlistID, uris, []);
        console.log("got adjustments")

        //adjust them
        adjust(adjustments)

            //resolve
            .then(() => {
                console.log("adjusted adjustments")
                resolve()
            })

            //error
            .catch((error) => console.log("Errored: ", error))
    })
}

const adjust = (adjustments) => {
    return new Promise((resolve, reject) => {
        //only adjust things if there are things to adjust
        if (adjustments.length > 0) {
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
            for (let i = 0; i < adjustments.length && uris.length < 100; i++) {
                //the adjustment at this step
                let temp = adjustments[i];

                //if the adjustment at this step matches the template
                if (temp.adjustment === template.adjustment && temp.id === template.id) {
                    //remove it from the list of adjustments
                    adjustments.splice(i, 1);
                    i--

                    //dont support songs that are local
                    if (temp.uri.indexOf("spotify:local") == -1) {
                        //add its uri to the relevant lists
                        uris.push(temp.uri);
                        batchAdjustments.push(temp);
                    }
                    else {
                        console.log(temp.uri + " is local and unsupported.");
                    }
                }
            }

            //adjust the playlist via the batch

            //if the adjustment is a clear
            if (template.adjustment === "clear") {
                //convert the uris to a list of objects (api is stupid)
                let objectUris = [];

                uris.forEach(uri => {
                    objectUris.push({ uri: uri });
                });

                console.log("removing " + objectUris.length + " songs from playlist " + template.id);

                //remove the provided uris from the template's playlist
                bot.spotifyApi.removeTracksFromPlaylist(template.id, objectUris)

                    //on success, adjust the remaining adjustments
                    .then(() => adjust(adjustments))

                    //after all other adjustments have been adjusted, resolve 
                    .then((() => resolve()))

                    //error handling
                    .catch(function (error) {
                        //if it is a server error we can just retry
                        if (error.statusCode === 500 || error.statusCode === 502) {
                            //report server error to console
                            console.log("Server error, trying again");

                            //add batch adjustments back into the list of adjustments
                            Array.prototype.push.apply(adjustments, batchAdjustments);

                            //retry
                            adjust(adjustments)

                                //resolve
                                .then(() => resolve())

                                //report error (is this dead code?)
                                .catch((error) => console.log("error while retrying a clear in adjust", error));
                        }
                        else {
                            console.log('error while clearing in adjust');
                            console.log(error);
                        }
                    });
            }
            //if this adjustment is an addition
            if (template.adjustment === "add") {
                console.log("adding " + uris.length + " songs to playlist " + template.id);

                //add the provided uris to the template's playlist
                bot.spotifyApi.addTracksToPlaylist(template.id, uris)

                    //on success, adjust the remaining adjustments
                    .then(() => adjust(adjustments))

                    //after all other adjustments have been adjusted, resolve 
                    .then((() => resolve()))

                    //error handling
                    .catch(function (error) {
                        //if it is a server error we can just retry
                        if (error.statusCode === 500 || error.statusCode === 502) {
                            //report server error to console
                            console.log("Server error, trying again");

                            //add batch adjustments back into the list of adjustments
                            Array.prototype.push.apply(adjustments, batchAdjustments);

                            //retry
                            adjust(adjustments)

                                //resolve
                                .then(() => resolve())

                                //report error (is this dead code?)
                                .catch((error) => console.log("error while retrying an add in adjust", error));
                        }
                        else {
                            console.log('error while adding in adjust');
                            console.log(error);
                        }
                    });
            }
        }
        else {
            console.log("All adjustments adjusted.\n")
            resolve();
        }
    });
}

const clearPlaylist = (playlistID) => {
    return new Promise((resolve, reject) => {
        getTracks(playlistID).then((tracks) => {
            let uris = []

            for (let track of tracks) {
                uris.push(track.track.uri)
            }

            console.log("clearing " + uris.length + " songs from playlist " + playlistID)
            return removeSongsFromPlaylist(playlistID, uris)
        })
            .then(() => resolve())
            .catch((error) => console.log("error clearing playlist: ", playlistID, "\nerr:", error))
    })
}

module.exports = {
    setSpotifyBot,
    getTracks,
    getCurrentSong,
    createPlaylist,
    addSongsToPlaylist,
    clearPlaylist,
}