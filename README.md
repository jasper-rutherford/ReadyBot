waow theres no readme. 

ok so the idea is you can be listening to a song and go "oh hey i like this song. this is a good song." and then you can do a "like" and record like, the mood you were in when you liked the song. and then those moody likes get recorded to a database, and then you can like. filter a playlist based on all the songs that fit a particular vibe, within a certain timeframe. 

its on discord only for like, a hyper lazy cross platform interface. 

# Objectives:

1. separate the backend/api from the bot. have two separate things running. microservices?

- so like. one service is the backend, which hosts an api.
- and then the second service hosts the discord bot, and the discord bot calls the api as needed. 
- notably, the database should be hidden behind the api. 

2. make the website display information from the database. popular songs, filters, sliders, charts. and i want song album thumbnails or whatever. getting those is big. 

3. i'd also really like to get postgres shoved into a service rather than. whatever it is right now. possibly with migrations or something idk. 

4. make nice readme

5. profit

# ok so doing number 1 - 

- i think the way to do this is to leave the bot functioning. and to create in parallel a separate api service running in docker. then, slowly port functionality over so that like, the discord bot does 90% on its own, and 10% via api. etc. 

so. step one. get the api service running in a docker container. 

ready-api?

npm install express


# how do i set things up?

- copy the template.env into .env and populate stuff

- do that once with the root .env, and also for each service (currently just api has one)

- more to come