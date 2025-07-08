# the idea:

ok so the idea is you can be listening to a song and go "oh hey i like this song. this is a good song." and then you can do a "like" and record like, the mood you were in when you liked the song. and then those moody likes get recorded to a database, and then you can like. filter a playlist based on all the songs that fit a particular vibe, within a certain timeframe. 

its on discord only for like, a hyper lazy cross platform interface. 

# Objectives:

## 1. separate the backend/api from the bot. have two separate things running. microservices?

- so like. one service is the backend, which hosts an api.
- and then the second service hosts the discord bot, and the discord bot calls the api as needed. 
- notably, the database should be hidden behind the api. 

## 2. make the website display information from the database. popular songs, filters, sliders, charts. and i want song album thumbnails or whatever. getting those is big. 

## 3. i'd also really like to get postgres shoved into a service rather than. whatever it is right now. possibly with migrations or something idk. 

## 4. make nice readme

## 5. backups

- in sortinator there shall be better backups to gdrive instead of git. the backup code will not be in the bot. the most recent 14 backups will be kept. any older ones will be discarded. except maybe keep like a good backup every six months. or something. 

#### alert: the existing postgres backup thing is flaky and bad. data loss is bad.

- improve backups for new stuff. send that shit to gdrive instead of git. and then leave old postgres backups as is (to git). when we swap over to new stuff, we'll start tearing out the git backups (and all the old functionality)

## 6. profit

## 7. have a nice easy setup instructions!

## 8. pretty the readme

## 9. unit tests are cool. 

- currently there's db-backups/test-backups.sh which seems to confirm backups work. but the test is never ran automatically. sooooooo

## 10. where are my logs going? somewhere other than the void perhaps.

# ok so doing number 1 - 

- i think the way to do this is to leave the bot functioning. and to create in parallel a separate api service running in docker. then, slowly port functionality over so that like, the discord bot does 90% on its own, and 10% via api. etc. 

so. step one. get the api service running in a docker container. 


# how do i set things up?

### 0. brush yo teeth

```
# update
sudo apt update

# upgrade
sudo apt upgrade

# you probably already have this right? right?
sudo apt install make
```

### 1. copy the template envs

```
# copy the root template.env and populate vars
cp template.env .env
vi .env

# do that for each service (currently just api has one)
cp api/template.env api/.env
vi api/.env
```

### 2. install node

```
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# reload your shell
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# install node js
nvm install --lts
nvm use --lts

# check it worked
node -v
npm -v
```

### 3. npm install

```
# once in the root folder
npm install

# once in root/api
( cd api && npm install )
```

### 4. install dbmate on linux:

```
# get it
curl -fsSL https://github.com/amacneil/dbmate/releases/download/v1.16.0/dbmate-linux-amd64 -o dbmate

# make it executable
chmod +x dbmate

# move that shit
sudo mv dbmate /usr/local/bin/
```

### 5. setup rclone
```
# install it
curl https://rclone.org/install.sh | sudo bash

### configure it
# - new remote
# - name it gdrive
# - choose google drive
# - use default client id & secret
# - scope: 3
# - service_account_file > leave empty
# - Edit advanced config? no
# - auto config? yes
# - shared drive? no
# - keep remote? yes
rclone config

# move the config so the db-backups service can use it
cp ~/.config/rclone/rclone.conf ./db-backups/rclone.conf
```

TODO: think about test vs dev vs prod. when i run this on my laptop i see:

```
db-backups-1  | ⚠️  Running in PROD mode with DB=readybase_dev
```

which is silly.

TODO: possibly do dev purely in docker? could be cool and good exercise

TODO(jruth): make a setup make target.

# The services!

- api: backend api. endpoints. touches the db. 

- postgres: the db. holds the data. 

- db-backups: maintains backups of the db in gdrive