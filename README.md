# README

* Getting start
```bash
docker compose build
docker compose up -d
docker compose run --rm web bundle install
docker compose run --rm web rails db:create
docker compose run --rm web rails db:seed
```

* Reset ALL
```bash
docker compose down -v
docker compose build --no-cache
docker compose up -d
docker compose run --rm web bundle install
docker compose run --rm web rails db:create
docker compose run --rm web rails db:seed
```


* Generate RBS files
```bash
rbs collection install
bin/rails rbs_rails:all
```