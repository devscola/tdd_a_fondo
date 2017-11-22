# Kata setup

Dockerized setup with Ruby + RSpec.


## Requirements

- Docker https://docs.docker.com/compose/install/


## Set up

```
docker-compose up --build
```

You can make use of your own Git repository by removig the ``.git`` directory.

## Run specs

```
docker-compose run app bundle exec rspec
```
