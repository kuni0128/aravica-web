_DOCKER_CMD:=docker-compose
_API_SERVICE_NAME:=api

API_EXEC_CMD:=${_DOCKER_CMD} exec ${_API_SERVICE_NAME}

.PHONY: build clean test

#
# api
#
api/console:
	${API_EXEC_CMD} /bin/bash
rubocop:
	${API_EXEC_CMD} bundle exec rubocop
rubocop/fix:
	${API_EXEC_CMD} bundle exec rubocop -a
rspec:
	${API_EXEC_CMD} bundle exec rspec

#
# db
#
db/update: migrate seed
migrate:
	${API_EXEC_CMD} bin/rails db:migrate
seed:
	${API_EXEC_CMD} bin/rails db:seed
