#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	-i /local/openapi.yaml \
	-g typescript-node \
	-o /local/out/storage-api-ts-node