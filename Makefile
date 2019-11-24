.PHONY: up build down update clean-build

all: clean-build up

up:
	@echo "Getting all containers up."
	docker-compose up

build:
	docker-compose up --build

down:
	docker-compose down

update:
	@echo "Updating all git modules"
	git pull
	git submodule update --remote

clean-build:
	@echo "Starting a clean build."
	docker-compose build --no-cache && up