#!/bin/bash

# Exit when any command fails:
set -e

IMAGE="igabriele/knex-pg:${NODE_VERSION}:${KNEX_VERSION}:${PG_VERSION}:${PATCH_VERSION}"

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USER}" --password-stdin
docker push "${IMAGE}"
