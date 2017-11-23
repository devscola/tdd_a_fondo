# PHP setup

Dockerized setup with PHP + PHPUnit.


## Requirements

- Docker https://docs.docker.com/compose/install/


## Set up

```
docker-compose up --build
```

You can make use of your own Git repository by removing the ``.git`` directory.

## Run specs

```
docker-compose run --rm app php vendor/bin/phpunit
```
