# there was an idea:

ok so the idea is you can be listening to a song and go "oh hey i like this song. this is a good song." and then you can do a "like" and record like, the mood you were in when you liked the song. and then those moody likes get recorded to a database, and then you can like. filter a playlist based on all the songs that fit a particular vibe, within a certain timeframe. 

its on discord only for like, a hyper lazy cross platform interface. 

# Objectives:

## 1. Microservices

### Shitbot
- it connects directly to the postgres service 
- we want to slowly disassemble this into other services

### Backend/API
- this exists, but is empty.
- Will act as middleware between postgres and things that want access to postgres data
- Will slowly port functionality over from the shitbot into this so that like, the discord bot does 90% on its own, and 10% via api, moving towards 0% shitbot and 100% api or whatever.
- api: backend api. endpoints. touches the db. 

### The proper discord bot
- this doesnt exist yet at all
- linted, prettiered, etc
- this discord bot calls the api as needed.
- will slowly port functionality out of shitbot into this one.
- i guess this means for a while we will run the shitbot and this in parallel? so i can do things slowly and surely. 
- This is farther into the future, and thoughts will change. wip.

### Postgres
- this exists
- Want to hide this behind the api.
- currently accessed directly via shitbot.
- users:
    - admin user for config/setup/management
    - Readybot user, intended to be used by api to access postgres db
    - shitbot user, used by shitbot to directly access db. 
        - planning to delete this later once shitbot has been fully melted down
- this runs postgres

### Migrations
 - this service exists
 - they go through dbmate. 
 - to create a new migration do `make new-migration`. input a name for your migration. there should be a new file. edit it.
 - run migrations by doing `make run-migrations` WHILE THE DOCKER SERVICES ARE RUNNING. it should just work. even with backups. 
 - i put migrations in a whole separate service because putting them anywhere else felt like it made things a little too grey. and a whole service just for migrations isn't too much of a lift anyway. its a manual service, so it only runs when explicitly ran (which you can do with `make run-migrations`)

#### migrations are a bit silly:
- I couldn't find a binary for `dbmate` that my raspi could run. So instead of downloading and running a binary, we download the source and compile it locally. on the raspi this takes like 7 minutes. But, docker does clever caching things, meaning that dbmate is only compiled when the dbmate repo is updated (which seems to happen once or twice every month or so), and that's good enough for me.    

### Backups
 - theres a backup service, which takes a daily backup of the postgres db
 - backups are stored in gdrive, facilitated with rclone
 - theres short term backups and long term backups
     - short term backups: the (up to) 14 most recent backups
     - long term backups: whenever theres more than 14 short term backups, the old ones are either deleted or promoted to long term. they get promoted iff the time between the most recent long term backup and the oldest short term backup is more than ~5 months.

- to make a backup do `make backup`
- to restore a backup do `make restore-backup`
    - this should hold your hand along the process quite nicely

## 2. make the website display information from the database. popular songs, filters, sliders, charts. and i want song album thumbnails or whatever. getting those is big. 

## 3. make nice readme
- This is an ongoing goal. I think we're moving towards something shapely here. keep at it.

## 4. have a nice easy setup instructions!
- some exist. theyre down below. think about improving them
- TODO(jruth): make a setup make target.
considerations:
- different operating systems?
- or explain like, the system i'm devving on and prodding on
    - maybe that just goes in the readme somewhere

## 5. unit tests are cool. 

- currently there's db-backups/test-backups.sh which seems to confirm backups work. but the test is never ran automatically. sooooooo

## 6. where are my logs going? somewhere other than the void perhaps.
- currently you can see them with `docker compose logs <service>`
- idk how viable something like datadog would be. but. that would be cool.

## 7. CI/CD?
- github actions is free or has a free something or other
- could do some sort of self hosted runner thing perchance

## 8. profit

## 9. area for random thoughts/ideas:

### think about test vs dev vs prod. when i run this on my laptop i see:

```
db-backups-1  | ⚠️  Running in PROD mode with DB=readybase_dev
```

which is silly.

- would love a separate channel in discord for prod/dev

### possibly do dev purely in docker? could be cool and good exercise

### move everything in the `data` folder into postgres
- this folder is full of bad practice. shift things around.

# Setup instructions:

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

### 4. setup rclone
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

# Section for planning and next steps:
- From a higher level, I think next steps are to:
    - pull shitbot logic out into api, have shitbot call api
    - look at what remains of shitbot, start thinking about rebirthing shitbot into properbot
    - further steps are too far into the future to think about