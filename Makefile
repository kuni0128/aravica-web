_DOCKER_CMD:=docker-compose
_API_SERVICE_NAME:=api

API_EXEC_CMD:=${_DOCKER_CMD} exec ${_API_SERVICE_NAME}

.PHONY: build clean test

api/login:
	${API_EXEC_CMD} /bin/bash
