SHELL := /bin/bash

.PHONY: build serve clean

build:
	 docker compose build

serve:
	 docker compose up --build

clean:
	 docker compose down --volumes --remove-orphans

# If your Docker uses the legacy docker-compose, run:
#   docker-compose up --build

