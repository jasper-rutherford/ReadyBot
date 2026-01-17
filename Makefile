# this env is so the postgres login target works
include .env
export

.PHONY: arbie docker lint-% pretty-% fix-% postgres postgres-readybot run-migrations new-migration

# 1. check that the rclone config exists
# 2. run all the docker containers except migrations and the shitbot 
# 3. run migrations
# 4. run the shitbot container
start:
	@test -f db-backups/rclone/rclone.conf || (echo "Missing ReadyBot/db-backups/rclone.conf - check Readybot/README.md for details" && exit 1)
	docker compose up --build -d api postgres db-backups
	$(MAKE) run-migrations
	docker compose up --build -d shitbot discord
	@echo "If you aren't seeing the ballot messages, consider going to http://localhost:8888/login to authenticate spotify."

# this will stop and wipe everything
# -v will remove the volumes, which means the database will be wiped
nuke:
	@echo "⚠️  This will completely destroy your Postgres data."
	@read -p "Are you sure you want to continue? Type 'yes' to confirm: " confirm && \
	if [ "$$confirm" = "yes" ]; then \
		docker compose down -v --remove-orphans; \
		docker network prune -f; \
	else \
		echo "Aborted."; \
	fi

# nuke and then start the containers
start-with-nuke: nuke start

# this is just here so I can press tab and auto-complete most of the target
redeploy-service-:
	echo "Redeploy a service by name, e.g. 'redeploy-service-api'"

# Redeploy a specific service by name
redeploy-service-%:
	docker compose up --build -d $*

# These are the services we currently support the linting/prettying of
FIXABLE := api discord

# lint a supported service
lint-%:
	@if ! echo "$(FIXABLE)" | grep -qw "$*"; then \
		echo "error: invalid target '$*' (allowed: $(FIXABLE))"; \
		exit 1; \
	fi
	npx eslint "$*/**/*.ts" --fix --config ./eslint.config.js

# pretty up a supported service
pretty-%:
	@if ! echo "$(FIXABLE)" | grep -qw "$*"; then \
		echo "error: invalid target '$*' (allowed: $(FIXABLE))"; \
		exit 1; \
	fi
	npx prettier --write "$*/**/*.ts"

# lint and pretty a supported service
fix-%:
	$(MAKE) lint-$*
	$(MAKE) pretty-$*

# connect to postgres in the docker container as admin
postgres:
	docker exec -it readybot-postgres-1 psql --username "$(POSTGRES_USER)" --dbname "$(POSTGRES_DB)"

# connect to postgres in the docker container as the bot user
postgres-readybot:
	docker exec -it readybot-postgres-1 psql --username "$(API_POSTGRES_USER)" --dbname "$(POSTGRES_DB)"

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
	docker exec readybot-db-backups-1 /backup.sh

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

# # test that the backup script works
# test-backup: # this is kinda jank. come back to unit tests... sooner the better
# 	sudo mkdir -p /root/.config/rclone
# 	sudo cp ~/.config/rclone/rclone.conf /root/.config/rclone/rclone.conf
# 	sudo --preserve-env bash db-backups/test_backups.sh

# This gets things ready for running api tests
# this is called by the test-api target, and also by the vscode debugger when debugging tests
prep-unit-tests-api: 
	docker compose down
	docker compose up --build -d postgres
	$(MAKE) run-migrations

# DB_HOST must be set to localhost because the api tests run outside of docker
unit-tests-api:
	$(MAKE) prep-unit-tests-api
	cd api && DB_HOST=localhost && npm test