#!/usr/bin/env bash

if ! command -v httpyac &> /dev/null
then
    printf "\nhttpyac could not be found, please install: \n\n"
    printf "npm install -g httpyac\n"
    printf "OR\n"
    printf "yarn global add httpyac\n\n"
    exit 1
fi

for file in ../test-data/*.json; do
  STUFF="${file##*/}"
  httpyac production.http --all --var foo=${STUFF}
done