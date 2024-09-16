# README

* Getting start
```
docker compose build
docker compose up -d
docker compose run --rm web bundle install
docker compose run --rm web rails db:create
```

* Reset
```
docker compose down -v
docker compose build --no-cache
docker compose up -d
docker compose run --rm web bundle install
docker compose run --rm web rails db:create
```

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
