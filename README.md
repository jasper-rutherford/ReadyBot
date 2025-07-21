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

### quick migrations blurb
 - they exist!
 - they go through dbmate. 
 - to create a new migration do `make new-migration`. there should be a new file. edit it.
 - run migrations by doing `make run-migrations` WHILE THE DOCKER SERVICES ARE RUNNING. it should just work. even with backups. 
 - i put migrations in a whole separate service because putting them anywhere else felt like it made things a little too grey. and a whole service just for migrations isn't too much of a lift anyway. its a manual service, so it only runs when explicitly ran (with `make run-migrations`)

## 4. make nice readme

## 5. backups

- in sortinator there shall be better backups to gdrive instead of git. the backup code will not be in the bot. the most recent 14 backups will be kept. any older ones will be discarded. except maybe keep like a good backup every six months. or something. 

### Backups exist now!

 - theres a backup service, which takes a daily backup
 - backups are stored in gdrive, facilitated with rclone
 - theres short term backups and long term backups
     - short term backups: the (up to) 14 most recent backups
     - long term backups: whenever theres more than 14 short term backups, the old ones are either deleted or promoted to long term. they get promoted iff the time between the most recent long term backup and the oldest short term backup is more than ~5 months.

#### alert: the existing postgres backup thing is flaky and bad. data loss is bad.

- improve backups for new stuff. send that shit to gdrive instead of git. and then leave old postgres backups as is (to git). when we swap over to new stuff, we'll start tearing out the git backups (and all the old functionality)
- working towards a future where we migrate the shit postgres data into the docker postgres, and then we point the shitbot into docker postgres. we're.... close? theres a section at the bottom with ramblings of a plan

## 6. profit

## 7. have a nice easy setup instructions!

## 8. pretty the readme

## 9. unit tests are cool. 

- currently there's db-backups/test-backups.sh which seems to confirm backups work. but the test is never ran automatically. sooooooo

## 10. where are my logs going? somewhere other than the void perhaps.

- the shitbot logs to log.txt
- which is terrible lmao
- do an immediate follow up to add the gitignore

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
cp ~/.config/rclone/rclone.conf ./db-backups/rclone/rclone.conf
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




# shitbot -> docker bot migration ramblings

- move shitbot into a service
- connect shitbot into docker postgres
- restore a backup into postgres, look at schema, put in migration files


next steps: start porting logic out of shitbot and into docker api
- problem: shitbot and docker api should use the same postgres db
- can either have shitbot and api use docker postgres, or have both use shit postgres. 
- Docker Postgres ✅
    - need to migrate old data to new db
    - need to reroute shitbot to use docker postgres
- shit postgres ❌
    - need to have docker api connect to shit postgres (outside docker)
        - feels backwards


        

BACKUPS
- a make target that does a backup ✅
- a make target that restores a backup ✅
    - prompts you that this will overwrite the existing db. ✅
    - list all available short term and long term backups in gdrive for this db ✅
    - use arrow keys to select one ❌
    - use number to select one ✅
    - wipe the existing db
    - restore chosen backup ✅
    - winner

    notably right now when you restore, the backup is downloaded to the machine where youre restoring to. idk if i care. but jsyk

    # jasper hey plz add log.txt to the gitignore at the next possible time!