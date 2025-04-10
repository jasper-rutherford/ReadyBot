[1mdiff --git a/log.txt b/log.txt[m
[1mindex edd145b..435a6e3 100644[m
[1m--- a/log.txt[m
[1m+++ b/log.txt[m
[36m@@ -679545,3 +679545,586 @@[m [mHTTP Server up. Now go to http://localhost:8888/login in your browser.[m
 (node:1118) [DEP0128] DeprecationWarning: Invalid 'main' field in '/home/arbie/Desktop/ReadyBot/package.json' of 'main.js'. Please either fix that or report it to the module author[m
 (Use `node --trace-deprecation ...` to show where the warning was created)[m
 HTTP Server up. Now go to http://localhost:8888/login in your browser.[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:0evOmsnfWAqsGJlSTICgz7'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:0evOmsnfWAqsGJlSTICgz7', '1', 'Rockstar Everyday', '2025-02-03 22:52:01.178', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:0evOmsnfWAqsGJlSTICgz7'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:0evOmsnfWAqsGJlSTICgz7/🦥:[m
[32m+[m[32m{ name: 'Rockstar Everyday', interval_score: '3', total_score: '3' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[Rockstar Everyday] has a score of [ 3 ] over the last 2 months and has an all time score of [ 3 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:7l5JdO4AL88SQUgkF67DG7'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:7l5JdO4AL88SQUgkF67DG7', '1', 'BEFORE I MET YOU', '2025-02-03 23:08:18.820', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:7l5JdO4AL88SQUgkF67DG7'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:7l5JdO4AL88SQUgkF67DG7/🦥:[m
[32m+[m[32m{ name: 'BEFORE I MET YOU', interval_score: '4', total_score: '4' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[BEFORE I MET YOU] has a score of [ 4 ] over the last 2 months and has an all time score of [ 4 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:5uBlr2RNpuu3n7ROgiQa7w'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:5uBlr2RNpuu3n7ROgiQa7w', '1', 'dramatic', '2025-02-03 23:17:09.107', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:5uBlr2RNpuu3n7ROgiQa7w'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:5uBlr2RNpuu3n7ROgiQa7w/🦥:[m
[32m+[m[32m{ name: 'dramatic', interval_score: '5', total_score: '5' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[dramatic] has a score of [ 5 ] over the last 2 months and has an all time score of [ 5 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:1xrx0GpR1sUrUApFzBI6Ld'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:1xrx0GpR1sUrUApFzBI6Ld', '1', 'Kiss N'' Gun', '2025-02-03 23:20:18.395', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:1xrx0GpR1sUrUApFzBI6Ld'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:1xrx0GpR1sUrUApFzBI6Ld/🦥:[m
[32m+[m[32m{ name: "Kiss N' Gun", interval_score: '1', total_score: '1' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[Kiss N' Gun] has a score of [ 1 ] over the last 2 months and has an all time score of [ 1 ] for 🦥[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:30hvHBsvvl0uPXyRoULKiQ'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:30hvHBsvvl0uPXyRoULKiQ', '1', 'SAiLOR MOON', '2025-02-04 10:26:18.058', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:30hvHBsvvl0uPXyRoULKiQ'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:30hvHBsvvl0uPXyRoULKiQ/🦥:[m
[32m+[m[32m{ name: 'SAiLOR MOON', interval_score: '5', total_score: '5' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[SAiLOR MOON] has a score of [ 5 ] over the last 2 months and has an all time score of [ 5 ] for 🦥[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:31rLeplcJIGfbvUBpPa9f7'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:31rLeplcJIGfbvUBpPa9f7', '1', 'MUSTANG BABY (FT. ARTEMAS)', '2025-02-04 10:29:54.432', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:31rLeplcJIGfbvUBpPa9f7'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:31rLeplcJIGfbvUBpPa9f7/🦥:[m
[32m+[m[32m{[m
[32m+[m[32m  name: 'MUSTANG BABY (FT. ARTEMAS)',[m
[32m+[m[32m  interval_score: '2',[m
[32m+[m[32m  total_score: '2'[m
[32m+[m[32m}[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[MUSTANG BABY (FT. ARTEMAS)] has a score of [ 2 ] over the last 2 months and has an all time score of [ 2 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:62hLiF5VQ4ijErnEbxQBpU'[m
[32m+[m[32msong not yet in the barrel, adding it[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32midentified 1 songs to be added to playlist [4jCZqEM3AdWj3uSpjuY9IK][m
[32m+[m[32mgot adjustments[m
[32m+[m[32madding 1 songs to playlist 4jCZqEM3AdWj3uSpjuY9IK[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:62hLiF5VQ4ijErnEbxQBpU', '1', 'GIRL AND THE MACHINE', '2025-02-04 10:38:38.368', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:62hLiF5VQ4ijErnEbxQBpU'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:62hLiF5VQ4ijErnEbxQBpU/🦥:[m
[32m+[m[32m{ name: 'GIRL AND THE MACHINE', interval_score: '1', total_score: '1' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[GIRL AND THE MACHINE] has a score of [ 1 ] over the last 2 months and has an all time score of [ 1 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:2LaLzmU2vny0lwlyi6sCp2'[m
[32m+[m[32msong not yet in the barrel, adding it[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32midentified 1 songs to be added to playlist [4jCZqEM3AdWj3uSpjuY9IK][m
[32m+[m[32mgot adjustments[m
[32m+[m[32madding 1 songs to playlist 4jCZqEM3AdWj3uSpjuY9IK[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:2LaLzmU2vny0lwlyi6sCp2', '1', 'DIRTY LITTLE SECRET', '2025-02-04 10:49:02.885', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:2LaLzmU2vny0lwlyi6sCp2'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:2LaLzmU2vny0lwlyi6sCp2/🦥:[m
[32m+[m[32m{ name: 'DIRTY LITTLE SECRET', interval_score: '1', total_score: '1' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[DIRTY LITTLE SECRET] has a score of [ 1 ] over the last 2 months and has an all time score of [ 1 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:41QRhGJmP6DPhzD35sV8tZ'[m
[32m+[m[32msong not yet in the barrel, adding it[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32midentified 1 songs to be added to playlist [4jCZqEM3AdWj3uSpjuY9IK][m
[32m+[m[32mgot adjustments[m
[32m+[m[32madding 1 songs to playlist 4jCZqEM3AdWj3uSpjuY9IK[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:41QRhGJmP6DPhzD35sV8tZ', '1', 'FML (LOL OH WELL)', '2025-02-04 10:55:46.393', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:41QRhGJmP6DPhzD35sV8tZ'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:41QRhGJmP6DPhzD35sV8tZ/🦥:[m
[32m+[m[32m{ name: 'FML (LOL OH WELL)', interval_score: '1', total_score: '1' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[FML (LOL OH WELL)] has a score of [ 1 ] over the last 2 months and has an all time score of [ 1 ] for 🦥[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:30hvHBsvvl0uPXyRoULKiQ'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:30hvHBsvvl0uPXyRoULKiQ', '1', 'SAiLOR MOON', '2025-02-04 18:52:52.494', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:30hvHBsvvl0uPXyRoULKiQ'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:30hvHBsvvl0uPXyRoULKiQ/🦥:[m
[32m+[m[32m{ name: 'SAiLOR MOON', interval_score: '6', total_score: '6' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[SAiLOR MOON] has a score of [ 6 ] over the last 2 months and has an all time score of [ 6 ] for 🦥[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/2[m
[32m+[m[32mreading chunk 2/2[m
[32m+[m[32mclearing 54 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32midentified 54 songs to be cleared from playlist [2kEsJeC59em5JNePPitquD][m
[32m+[m[32mgot adjustments[m
[32m+[m[32mremoving 54 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32m/home/arbie/Desktop/ReadyBot/main.js:376[m
[32m+[m[32m            AND stamp >= NOW() - INTERVAL '${queryInterval}'[m
[32m+[m[32m                                             ^[m
[32m+[m
[32m+[m[32mReferenceError: queryInterval is not defined[m
[32m+[m[32m    at Object.orderedUris (/home/arbie/Desktop/ReadyBot/main.js:376:46)[m
[32m+[m[32m    at /home/arbie/Desktop/ReadyBot/actions.js:285:25[m
[32m+[m[32m    at runMicrotasks (<anonymous>)[m
[32m+[m[32m    at processTicksAndRejections (node:internal/process/task_queues:96:5)[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/1[m
[32m+[m[32mclearing 0 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32mgot adjustments[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32m/home/arbie/Desktop/ReadyBot/main.js:376[m
[32m+[m[32m            AND stamp >= NOW() - INTERVAL '${queryInterval}'[m
[32m+[m[32m                                             ^[m
[32m+[m
[32m+[m[32mReferenceError: queryInterval is not defined[m
[32m+[m[32m    at Object.orderedUris (/home/arbie/Desktop/ReadyBot/main.js:376:46)[m
[32m+[m[32m    at /home/arbie/Desktop/ReadyBot/actions.js:285:25[m
[32m+[m[32m    at processTicksAndRejections (node:internal/process/task_queues:96:5)[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mgetting current song[m
[32m+[m[32mgetting current state[m
[32m+[m[32mno song playing[m
[32m+[m[32mnode:internal/process/promises:279[m
[32m+[m[32m            triggerUncaughtException(err, true /* fromPromise */);[m
[32m+[m[32m            ^[m
[32m+[m
[32m+[m[32m[UnhandledPromiseRejection: This error originated either by throwing inside of an async function without a catch block, or by rejecting a promise which was not handled with .catch(). The promise rejected with the reason "null".] {[m
[32m+[m[32m  code: 'ERR_UNHANDLED_REJECTION'[m
[32m+[m[32m}[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/1[m
[32m+[m[32mclearing 0 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32mgot adjustments[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32m/home/arbie/Desktop/ReadyBot/main.js:376[m
[32m+[m[32m            AND stamp >= NOW() - INTERVAL '${queryInterval}'[m
[32m+[m[32m                                             ^[m
[32m+[m
[32m+[m[32mReferenceError: queryInterval is not defined[m
[32m+[m[32m    at Object.orderedUris (/home/arbie/Desktop/ReadyBot/main.js:376:46)[m
[32m+[m[32m    at /home/arbie/Desktop/ReadyBot/actions.js:285:25[m
[32m+[m[32m    at processTicksAndRejections (node:internal/process/task_queues:96:5)[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:7jGppdExLgg6yKTG5RvnKs'[m
[32m+[m[32msong not yet in the barrel, adding it[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32midentified 1 songs to be added to playlist [4jCZqEM3AdWj3uSpjuY9IK][m
[32m+[m[32mgot adjustments[m
[32m+[m[32madding 1 songs to playlist 4jCZqEM3AdWj3uSpjuY9IK[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:7jGppdExLgg6yKTG5RvnKs', '1', 'Kiss Me Thru The Phone', '2025-02-05 00:12:32.314', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:7jGppdExLgg6yKTG5RvnKs'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:7jGppdExLgg6yKTG5RvnKs/🦥:[m
[32m+[m[32m{[m
[32m+[m[32m  name: 'Kiss Me Thru The Phone',[m
[32m+[m[32m  interval_score: '1',[m
[32m+[m[32m  total_score: '1'[m
[32m+[m[32m}[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[Kiss Me Thru The Phone] has a score of [ 1 ] over the last 2 months and has an all time score of [ 1 ] for 🦥[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/2[m
[32m+[m[32mreading chunk 2/2[m
[32m+[m[32mclearing 9 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32midentified 9 songs to be cleared from playlist [2kEsJeC59em5JNePPitquD][m
[32m+[m[32mgot adjustments[m
[32m+[m[32mremoving 9 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32m/home/arbie/Desktop/ReadyBot/main.js:376[m
[32m+[m[32m            AND stamp >= NOW() - INTERVAL '${queryInterval}'[m
[32m+[m[32m                                             ^[m
[32m+[m
[32m+[m[32mReferenceError: queryInterval is not defined[m
[32m+[m[32m    at Object.orderedUris (/home/arbie/Desktop/ReadyBot/main.js:376:46)[m
[32m+[m[32m    at /home/arbie/Desktop/ReadyBot/actions.js:285:25[m
[32m+[m[32m    at runMicrotasks (<anonymous>)[m
[32m+[m[32m    at processTicksAndRejections (node:internal/process/task_queues:96:5)[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:30hvHBsvvl0uPXyRoULKiQ'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:30hvHBsvvl0uPXyRoULKiQ', '1', 'SAiLOR MOON', '2025-02-05 14:27:02.580', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:30hvHBsvvl0uPXyRoULKiQ'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:30hvHBsvvl0uPXyRoULKiQ/🦥:[m
[32m+[m[32m{ name: 'SAiLOR MOON', interval_score: '7', total_score: '7' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[SAiLOR MOON] has a score of [ 7 ] over the last 2 months and has an all time score of [ 7 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:1ap5NcWZLaRjlCZcuxo9jA'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:1ap5NcWZLaRjlCZcuxo9jA', '1', 'HEAD OVER HEELS', '2025-02-05 14:32:22.224', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:1ap5NcWZLaRjlCZcuxo9jA'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:1ap5NcWZLaRjlCZcuxo9jA/🦥:[m
[32m+[m[32m{ name: 'HEAD OVER HEELS', interval_score: '3', total_score: '3' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[HEAD OVER HEELS] has a score of [ 3 ] over the last 2 months and has an all time score of [ 3 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr', '1', 'skinned knees', '2025-02-05 14:33:17.769', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr/🦥:[m
[32m+[m[32m{ name: 'skinned knees', interval_score: '4', total_score: '4' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[skinned knees] has a score of [ 4 ] over the last 2 months and has an all time score of [ 4 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:0dscoCNZ04K2z0p5zw3shV'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:0dscoCNZ04K2z0p5zw3shV', '1', 'Da Da Dum', '2025-02-05 14:35:43.823', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:0dscoCNZ04K2z0p5zw3shV'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:0dscoCNZ04K2z0p5zw3shV/🦥:[m
[32m+[m[32m{ name: 'Da Da Dum', interval_score: '2', total_score: '2' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[Da Da Dum] has a score of [ 2 ] over the last 2 months and has an all time score of [ 2 ] for 🦥[m
[32m+[m[32mgetting current state[m
[32m+[m[32msuccessfully queried:  SELECT * FROM scores WHERE spotify_uri = 'spotify:track:302AZQ7ISLWGgGxAln39Km'[m
[32m+[m[32mensured song exists[m
[32m+[m[32msuccessfully queried:  INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) VALUES ('spotify:track:302AZQ7ISLWGgGxAln39Km', '1', 'Shy Guy', '2025-02-05 14:41:04.766', '🦥')[m
[32m+[m[32msuccessfully queried:[m[41m  [m
[32m+[m[32m        SELECT[m
[32m+[m[32m            SUM(score) AS total_score,[m
[32m+[m[32m            SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - INTERVAL '2 months' THEN score ELSE 0 END) AS interval_score[m
[32m+[m[32m        FROM scores[m
[32m+[m[32m        WHERE spotify_uri = 'spotify:track:302AZQ7ISLWGgGxAln39Km'[m
[32m+[m[41m        [m
[32m+[m[32m        AND themoji = '🦥';[m
[32m+[m[32mretrieved scores for uri/themoji spotify:track:302AZQ7ISLWGgGxAln39Km/🦥:[m
[32m+[m[32m{ name: 'Shy Guy', interval_score: '5', total_score: '5' }[m
[32m+[m[32mupdating vote message[m
[32m+[m[32m[Shy Guy] has a score of [ 5 ] over the last 2 months and has an all time score of [ 5 ] for 🦥[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/1[m
[32m+[m[32mclearing 0 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32mgot adjustments[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32m/home/arbie/Desktop/ReadyBot/main.js:376[m
[32m+[m[32m            AND stamp >= NOW() - INTERVAL '${queryInterval}'[m
[32m+[m[32m                                             ^[m
[32m+[m
[32m+[m[32mReferenceError: queryInterval is not defined[m
[32m+[m[32m    at Object.orderedUris (/home/arbie/Desktop/ReadyBot/main.js:376:46)[m
[32m+[m[32m    at /home/arbie/Desktop/ReadyBot/actions.js:285:25[m
[32m+[m[32m    at processTicksAndRejections (node:internal/process/task_queues:96:5)[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/1[m
[32m+[m[32mclearing 0 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32mgot adjustments[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32m/home/arbie/Desktop/ReadyBot/main.js:376[m
[32m+[m[32m            AND stamp >= NOW() - INTERVAL '${queryInterval}'[m
[32m+[m[32m                                             ^[m
[32m+[m
[32m+[m[32mReferenceError: queryInterval is not defined[m
[32m+[m[32m    at Object.orderedUris (/home/arbie/Desktop/ReadyBot/main.js:376:46)[m
[32m+[m[32m    at /home/arbie/Desktop/ReadyBot/actions.js:285:25[m
[32m+[m[32m    at processTicksAndRejections (node:internal/process/task_queues:96:5)[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
[32m+[m[32mShuffling 🦥[m
[32m+[m[32mreading chunk 1/1[m
[32m+[m[32mclearing 0 songs from playlist 2kEsJeC59em5JNePPitquD[m
[32m+[m[32mgetting adjustments[m
[32m+[m[32mgot adjustments[m
[32m+[m[32mAll adjustments adjusted.[m
[32m+[m
[32m+[m[32madjusted adjustments[m
[32m+[m[32mError executing query: error: function percentile_cont(numeric, timestamp without time zone) does not exist[m
[32m+[m[32m    at Parser.parseErrorMessage (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/parser.js:287:98)[m
[32m+[m[32m    at Parser.handlePacket (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/parser.js:126:29)[m
[32m+[m[32m    at Parser.parse (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/parser.js:39:38)[m
[32m+[m[32m    at Socket.<anonymous> (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/index.js:11:42)[m
[32m+[m[32m    at Socket.emit (node:events:513:28)[m
[32m+[m[32m    at addChunk (node:internal/streams/readable:315:12)[m
[32m+[m[32m    at readableAddChunk (node:internal/streams/readable:289:9)[m
[32m+[m[32m    at Socket.Readable.push (node:internal/streams/readable:228:10)[m
[32m+[m[32m    at TCP.onStreamRead (node:internal/stream_base_commons:190:23) {[m
[32m+[m[32m  length: 247,[m
[32m+[m[32m  severity: 'ERROR',[m
[32m+[m[32m  code: '42883',[m
[32m+[m[32m  detail: undefined,[m
[32m+[m[32m  hint: 'No function matches the given name and argument types. You might need to add explicit type casts.',[m
[32m+[m[32m  position: '554',[m
[32m+[m[32m  internalPosition: undefined,[m
[32m+[m[32m  internalQuery: undefined,[m
[32m+[m[32m  where: undefined,[m
[32m+[m[32m  schema: undefined,[m
[32m+[m[32m  table: undefined,[m
[32m+[m[32m  column: undefined,[m
[32m+[m[32m  dataType: undefined,[m
[32m+[m[32m  constraint: undefined,[m
[32m+[m[32m  file: 'parse_func.c',[m
[32m+[m[32m  line: '620',[m
[32m+[m[32m  routine: 'ParseFuncOrColumn'[m
[32m+[m[32m}[m
[32m+[m[32mError getting ordered uris[m
[32m+[m[32mnode:internal/process/promises:279[m
[32m+[m[32m            triggerUncaughtException(err, true /* fromPromise */);[m
[32m+[m[32m            ^[m
[32m+[m
[32m+[m[32merror: function percentile_cont(numeric, timestamp without time zone) does not exist[m
[32m+[m[32m    at Parser.parseErrorMessage (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/parser.js:287:98)[m
[32m+[m[32m    at Parser.handlePacket (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/parser.js:126:29)[m
[32m+[m[32m    at Parser.parse (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/parser.js:39:38)[m
[32m+[m[32m    at Socket.<anonymous> (/home/arbie/Desktop/ReadyBot/node_modules/pg-protocol/dist/index.js:11:42)[m
[32m+[m[32m    at Socket.emit (node:events:513:28)[m
[32m+[m[32m    at addChunk (node:internal/streams/readable:315:12)[m
[32m+[m[32m    at readableAddChunk (node:internal/streams/readable:289:9)[m
[32m+[m[32m    at Socket.Readable.push (node:internal/streams/readable:228:10)[m
[32m+[m[32m    at TCP.onStreamRead (node:internal/stream_base_commons:190:23) {[m
[32m+[m[32m  length: 247,[m
[32m+[m[32m  severity: 'ERROR',[m
[32m+[m[32m  code: '42883',[m
[32m+[m[32m  detail: undefined,[m
[32m+[m[32m  hint: 'No function matches the given name and argument types. You might need to add explicit type casts.',[m
[32m+[m[32m  position: '554',[m
[32m+[m[32m  internalPosition: undefined,[m
[32m+[m[32m  internalQuery: undefined,[m
[32m+[m[32m  where: undefined,[m
[32m+[m[32m  schema: undefined,[m
[32m+[m[32m  table: undefined,[m
[32m+[m[32m  column: undefined,[m
[32m+[m[32m  dataType: undefined,[m
[32m+[m[32m  constraint: undefined,[m
[32m+[m[32m  file: 'parse_func.c',[m
[32m+[m[32m  line: '620',[m
[32m+[m[32m  routine: 'ParseFuncOrColumn'[m
[32m+[m[32m}[m
[32m+[m[32mHTTP Server up, http://localhost:8888/login is now available.[m
[32m+[m[32mrefresh token found[m
[32m+[m[32m<test build>[m
[32m+[m[32mThe access token has been refreshed[m
[32m+[m[32mreading themoji mappings from file[m
[32m+[m[32mread themoji mappings from file[m
