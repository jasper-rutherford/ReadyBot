# this env is so the postgres login target works
include db/.env
export

.PHONY: lint-api

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

# connect to postgres in the docker container
postgres:
	docker exec -it readybot-postgres-1 psql --username "$(POSTGRES_USER)" --dbname "$(POSTGRES_DB)"
