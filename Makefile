_API_SERVICE_NAME:=api
DOCKER_CMD:=docker-compose

API_EXEC_CMD:=${DOCKER_CMD} exec ${_API_SERVICE_NAME}
API_RUN_CMD:=${DOCKER_CMD} run ${_API_SERVICE_NAME}

.PHONY: build clean test

#
# docker
#
build:
	${DOCKER_CMD} build

#
# api
#
console:
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

#
# ci
#
ci/rubocop:
	${API_RUN_CMD} bundle exec rubocop
ci/rspec:
	${API_RUN_CMD} sh -c "bundle exec rails db:reset RAILS_ENV=test && bundle exec rspec"

#
# open-api
#
openapi/bundle:
	docker run --rm -v "${PWD}:/local" jeanberu/swagger-cli swagger-cli bundle local/api/v1/openapi.yml -o local/api/bundles/openapi-bundle-v1.json
openapi/generate:
	docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate -i /local/api/bundles/openapi-bundle-v1.json -g typescript-axios -o /local/frontend/lib/aravica/api_client/v1
