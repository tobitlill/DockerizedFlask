# A minimal dockerized Flask application

## How to run with docker-compose

Simply run this from this directory: `docker-compose up -d` (-d for detached mode).
Stop with `docker-compose down`

## How to run with Docker

From within this folder, use this command to build the container:
`docker build -t minimal-flask .`

Use this command to run this: 
`docker run --rm -p 12788:12788 -v "$(pwd)":/code minimal-flask`