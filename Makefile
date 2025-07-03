# this env is so the postgres login target works
include .env
export

.PHONY: arbie docker lint-api format-api clean-api postgres postgres-readybot run-migrations new-migration

# the dream is that we kill this make target
arbie:
	while true; do node . 2>&1 | tee -a log.txt || (echo "Bot crashed oopsie" 2>&1 | tee -a log.txt); done

# run the docker containers
# --build rebuilds the containers
# -d runs them in detached mode (in the background)
docker:
	docker compose up --build -d
	
# Run linter in the api directory using its own config
lint-api:
	cd api && npx eslint . --fix

# do prettier to the typescript in the api
format-api:
	cd api && npx prettier --write "**/*.ts"

# lint and format the api
clean-api: lint-api format-api

# connect to postgres in the docker container as admin
postgres:
	docker exec -it readybot-postgres-1 psql --username "$(POSTGRES_USER)" --dbname "readybase"

# connect to postgres in the docker container as the bot user
postgres-readybot:
	docker exec -it readybot-postgres-1 psql --username "$(BOT_POSTGRES_USER)" --dbname "readybase"

# create a new migration
# this will prompt you for a name
new-migration:
	@read -p "Migration name: " name; \
	dbmate --migrations-dir=api/migrations new $$name

# run database migrations
run-migrations:
	docker compose run --rm \
		-e DATABASE_URL="postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(DB_HOST):$(DB_PORT)/$(POSTGRES_DB)?sslmode=disable" \
		api dbmate --migrations-dir=migrations up