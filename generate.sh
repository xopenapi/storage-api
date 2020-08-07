#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:1.0.0 generate \
    -i /local/openapi.yaml \
    --git-repo-id storage-api-go \
    --git-user-id xopenapi \
    --package-name storage \
    -g go \
    -o /local/out/storage-api-go
