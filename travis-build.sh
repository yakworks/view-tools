#!/usr/bin/env bash

set -e

rm -rf ./build

echo "### Running build for branch $TRAVIS_BRANCH ###"
./gradlew --stop
./gradlew --no-daemon check --stacktrace
./travis-publish.sh 

