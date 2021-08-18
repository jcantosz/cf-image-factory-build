#!/bin/sh
JIRA_TICKET="SA-251"
GIT_BRANCH="test"
DOCKER_TAG="${JIRA_TICKET}_${GIT_BRANCH}"

docker build -t jcantosz/image-factory-demo:${DOCKER_TAG} --build-arg JIRA_TICKET=${JIRA_TICKET} --build-arg PULL_REQUEST=${PULL_REQUEST} ./docker
docker push jcantosz/image-factory-demo:${DOCKER_TAG}
