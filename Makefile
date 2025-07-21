# this env is so the postgres login target works
include .env
export

.PHONY: arbie docker lint-api format-api clean-api postgres postgres-readybot run-migrations new-migration

# the dream is that we kill this make target
arbie:
	while true; do node . 2>&1 | tee -a log.txt || (echo "Bot crashed oopsie" 2>&1 | tee -a log.txt); done

# 1. check that the rclone config exists
# 2. run the docker containers
# 3. run migrations
# 4. run the shitbot (for now- this is what we're hoping to obliterate in time)
start:
	@test -f db-backups/rclone/rclone.conf || (echo "Missing ReadyBot/db-backups/rclone.conf - check Readybot/README.md for details" && exit 1)
	docker compose up --build -d
#	$(MAKE) run-migrations
	$(MAKE) arbie

# this will stop and wipe everything
# -v will remove the volumes, which means the database will be wiped
nuke:
	@echo "⚠️  This will completely destroy your Postgres data."
	@read -p "Are you sure you want to continue? Type 'yes' to confirm: " confirm && \
	if [ "$$confirm" = "yes" ]; then \
		docker compose down -v; \
	else \
		echo "Aborted."; \
	fi

# nuke and then start the containers
start-with-nuke: nuke start

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
	docker exec -it readybot-postgres-1 psql --username "$(POSTGRES_USER)" --dbname "$(POSTGRES_DB)"

# connect to postgres in the docker container as the bot user
postgres-readybot:
	docker exec -it readybot-postgres-1 psql --username "$(BOT_POSTGRES_USER)" --dbname "$(POSTGRES_DB)"

# create a new migration
# this will prompt you for a name
new-migration:
	@read -p "Migration name: " name; \
	dbmate --migrations-dir=migrations/migrations new $$name

# run database migrations
run-migrations:
	docker compose build migrations
	docker compose run --rm migrations

# run the backup script in the db-backups container
backup:
	docker exec readybot-db-backups-1 /backup.sh --prod

# Wipe and restore the database using the restore script
restore-backup:
	@echo "⚠️  This will completely wipe your Postgres data and restore from backup."
	@read -p "Are you sure you want to continue? Type 'yes' to confirm: " confirm && \
	if [ "$$confirm" = "yes" ]; then \
		echo "🧨 Wiping postgres..."; \
		docker compose stop postgres; \
		docker compose rm -f postgres; \
		docker volume rm readybot_pgdata; \
		docker compose up -d postgres; \
		echo "🛠  Running restore script..."; \
		docker exec -it readybot-db-backups-1 /restore.sh; \
	else \
		echo "❌ Aborted."; \
	fi
