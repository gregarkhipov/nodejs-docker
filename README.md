# Docker image for running Node.js applications
## Setup

Create environment variables file from template
```
cp .env.example .env
```

And then edit to meet your needs


## Start

```
docker-compose build --no-cache
docker-compose up --force-recreate
```
