# 💡 there was an idea:

ok so the idea is you can be listening to a song and go "oh hey i like this song. this is a good song." and then you can do a "like" and record like, the mood you were in when you liked the song. and then those moody likes get recorded to a database, and then you can like. filter a playlist based on all the songs that fit a particular vibe, within a certain timeframe. 

its on discord only for like, a hyper lazy cross platform interface. 

# 📓 Current project structure, notes, and loose upcoming ideas:

## There's Microservices...

### 1. Shitbot
- it connects directly to the postgres service 
- we want to slowly disassemble this into other services
    - creating endpoints with tests, when endpoints are "good" redirect shitbot throught them.

### 2. Backend/API
- theres good bones here. it exists. theres a few endpoints. they get... sorta tested. 
- testing exists in ci/cd. bruno exists. 
- existing endpoints:
    - GET /hello
        - responds "hello world" or something
        - fully tested i'd say. 
    - GET /scores
        - gets score values. we should do documentation
        - a test exists. more needed. very very wip.
- Will act as middleware between postgres and things that want access to postgres data
- Will slowly port functionality over from the shitbot into this so that like, the discord bot does 90% on its own, and 10% via api, moving towards 0% shitbot and 100% api or whatever.

### 3. The proper discord bot
- this doesnt exist yet at all
- linted, prettiered, etc
- this discord bot calls the api as needed.
- will slowly port functionality out of shitbot into this one.
- i guess this means for a while we will run the shitbot and this in parallel? so i can do things slowly and surely. 
- This is farther into the future, and thoughts will change. wip.

### 4. Postgres
- this exists
- Want to hide this behind the api.
- currently accessed directly via shitbot.
- users:
    - admin user for config/setup/management
    - API user, used by api to access postgres db
    - shitbot user, used by shitbot to directly access db. 
        - planning to delete this later once shitbot has been fully melted down

### 5. Migrations
 - this service exists
 - they go through dbmate. 
 - to create a new migration do `make new-migration`. input a name for your migration. there should be a new file. edit it.
 - run migrations by doing `make run-migrations` WHILE THE DOCKER SERVICES ARE RUNNING. it should just work. even with backups. 
 - i put migrations in a whole separate service because putting them anywhere else felt like it made things a little too grey. and a whole service just for migrations isn't too much of a lift anyway. its a manual service, so it only runs when explicitly ran (which you can do with `make run-migrations`)

#### migrations are a bit silly:
- I couldn't find a binary for `dbmate` that my raspi could run. So instead of downloading and running a binary, we download the source and compile it locally. on the raspi this takes like 7 minutes. But, docker does clever caching things, meaning that dbmate is only compiled when the dbmate repo is updated (which seems to happen once or twice every month or so), and that's good enough for me for now.    

### 6. Backups
 - theres a backup service, which takes a daily backup of the postgres db
 - backups are stored in gdrive, facilitated with rclone
 - theres short term backups and long term backups
     - short term backups: the (up to) 14 most recent backups
     - long term backups: whenever theres more than 14 short term backups, the old ones are either deleted or promoted to long term. they get promoted iff the time between the most recent long term backup and the oldest short term backup is more than ~5 months.

- to make a backup do `make backup`
- to restore a backup do `make restore-backup`
    - this should hold your hand along the process quite nicely

## There's CI/CD...
- yeahhhh there sure is. github actions. 
- currently the only ci/cd is to run tests. for the api. very nice. 

## There's Tests...
- you can do `make test-api` to run the api tests locally. 
    - are they integration tests.
    - tests the real server against real postgres. http calls. shenanigans. 
- these api tests are ran in github actions ci/cd whenever a push to a branch or pr off of main happens. 
    - todo: wording here kinda sucks lmao
- `make test-backup` used to exist, and it. had vibes. it seems broken now. so it's commented out.
    - future work: fix it or delete it (hopefully fix it. maybe a canary or something could be fun?)

<br>

# 📜 Setup instructions:

### 0. Brush yo teeth

```
# update
sudo apt update

# upgrade
sudo apt upgrade

# you probably already have this right? right?
sudo apt install make
```

### 1. Copy the template envs

```
# copy the root template.env and populate vars
cp template.env .env
vi .env

# do that for each service (currently just api has one)
cp api/template.env api/.env
vi api/.env
```

### 2. Install node

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

### 4. Setup rclone
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

### 5. Bruno stuff.

```
todo (include link to download)
```

# Goals, aspirations, stretches, cool ideas:

### - Make nice readme
- This is an ongoing goal. I think we're moving towards something shapely here. keep at it.

### - Make the website display information from the database. popular songs, filters, sliders, charts. and i want song album thumbnails or whatever. getting those is big. 

### - Have nice easy setup instructions!
- some exist. theyre up above. think about improving them
- TODO(jruth): make a setup make target.
considerations:
- different operating systems?
- or explain like, the system i'm devving on and prodding on
    - maybe that just goes in the readme somewhere

### - unit tests. keep an eye out for things to unit test. 

### - Where are my logs going? somewhere other than the void perhaps.
- currently you can see them with `docker compose logs <service>`
- idk how viable something like datadog would be. but. that would be cool.

### - CI/CD
- we currently do github actions, but we could do some sort of self hosted runner thing perchance

### - ??? profit

### - keybinds or something. 
- when i'm busy doing something, and i hear a song come on that i like, but i cant log a score. because my hands are busy or im playing a game or something. voice controls would go crazy, but i think a simple hotkey(s) would be a fantastic start

### - we could maybe use the github issues stuff?
- seems like that would maybe be neat and practice, but also would mean not having one nice central place to find everything (this readme)

### - Think about test vs dev vs prod. when i run this on my laptop i see:

```
db-backups-1  | ⚠️  Running in PROD mode with DB=readybase_dev
```

which is silly.

### - Possibly do dev purely in docker? could be cool and fun exercise

### - A way to automagically deploy to raspi could be really really cool. 

# ⭐ Current North Stars:

## ☠ Kill Shitbot

- I want the shitbot service gone.

- create truebot service "Arbie"
    - has basic empty discord bot. 
    - typescript
    - discord.js
    - similar setup as api
    - linter
    - prettier

- commands
    - use the built in "/" stuff.
    - All
        - /christmas    ⭐ ez
        - /e            ⭐ ez
        - /ping
    - Music
        - /interval time (beginning, end) <can unbound either end>
        - /interval score (minimum, maximum) <can unbound either end>
        - /ballots
    - Admin
        - /eval

- keep the ballots
    - one bot sends the ballot(S),
        - a particular reaction to a message from one bot can signal to the other that this is ballot 1 or two
    - an "action" is triggered by a ballot reaction
        - can make spotify api calls (via the custom client)
        - can make internal api calls (to access the postgres db)
            - potentially make my own internal client for internal api? maybe?
        - some "actions" change the bot's "mode"? ie shuffle vs order vs upvote. 
    - actions:
        - previous song
        - upvote
        - downvote
        - skip
        - order
        - shuffle
        - reverse order
        - interval hot swap
        - new playlist
        - delete playlist
        - barrel, deprecated
        - help
        - resend ballots
    - ⭐ im imagining i suppose that in each bot is a list of all the total reaction actions across both bots ⭐
        - each bot also has a list of the ones that that particular bot can handle
            - so then they each like, react their next reaction if the one they're waiting for comes in.

- do we want to still read in all the themojis and keep them in memory?

- custom spotify client thing
    - within the bot the only spotify shenanigans should be "make a client" and "call things on the client"
        - ie: any login page stuff should exist within the client code/library, in another file from the discord bot.
    - token management? hmmm. build in a refresh call, but setup your own clock to call it. or something. 
        - actually, put this in the client if possible. maybe like a "kick off refresh" thing. but its all managed within the client. how possible is that? idk. 

- use a .env

## 📊 Song Visuals

tbd

## ❓ Clean up these various todos...?

- bruno setup instructions
- bruno generally
- postgres health check in regular docker like in ci/cd ?
- fix or delete `make test-backup`
- api token auth
- api: rest of endpoints
- api debug port is not passed around everywhere. make it so.
- api index "port must be set"
- api test code coverage trackers?
- api endpoint docs swagger (?)
- explore webhooks 
- make sure integration tests vs unit tests are explained in readme properly
- from server.ts:
    - TODO(jruth): make linter require types?
    - TODO(jruth): check if .husky in the root folder is used/needed
- would be nice to add a pre commit to prevent committing to main branch
- add types to the return values of createServer


# Pull Request Merge Process

- squash all the commits
    - :.,$s/pick/s
- one nice explanation of what is happening in the squashed commit
- format the width of the message to 80
    - todo: put the vim command here
- when you merge the pr, leave the name and body of the "merge" commit as default 
    - idea is the commit history will go 
        - "squashed commit with explanation of stuff"
        - "merged pr #n"
        - "squashed commit"
        - "merged pr #n+1"
        - etc