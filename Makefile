RAILS_CONTAINER := web

.PHONY: all
all: run

.PHONY: run
run:
	docker-compose up --build

.PHONY: open
open:
	open http://localhost:3000

.PHONY: build
build:
	docker-compose build

.PHONY: console
console:
	docker-compose run ${RAILS_CONTAINER} rails console

.PHONY: db_create
db_create:
	docker-compose run ${RAILS_CONTAINER} rake db:create

.PHONY: db_migrate
db_migrate:
	docker-compose run ${RAILS_CONTAINER} rake db:migrate

.PHONY: test
test:
	docker-compose run ${RAILS_CONTAINER} bash -c 'export RAILS_ENV=test && rake db:test:prepare && rake db:seed && rake test'

.PHONY: blog
blog:
	docker-compose run ${RAILS_CONTAINER} bash -c 'cd /app && bin/build_blog'

setup: db_create db_migrate

publish: build
	bin/publish

upgrade: publish
	bin/rancher_update

travis: build blog test

