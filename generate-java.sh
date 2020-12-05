#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	--auth signature \
	--group-id com.xopenapi \
	--artifact-id storage-api-java \
	-i /local/openapi.yaml \
	--git-repo-id storage-api-java \
	--git-user-id xopenapi \
	--api-package com.xopenapi.storage \
	--model-package com.xopenapi.storage.model \
	-g java \
	-o /local/out/storage-api-java
