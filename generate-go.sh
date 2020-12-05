#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	--auth signature \
	-i /local/openapi.yaml \
	-g go \
	--package-name=storage-api-go \
	--git-host=github.com \
	--git-repo-id=storage-api-go \
	--git-user-id=xopenapi \
	-o /local/out/storage-api-go
