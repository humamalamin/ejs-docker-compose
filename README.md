# How To Install

```
git clone git@github.com:humamalamin/ejs-docker-compose.git
npm install
cp .env.example to .env
edit file .env
import file sql in folder db to database
run COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose build
run docker-compose up