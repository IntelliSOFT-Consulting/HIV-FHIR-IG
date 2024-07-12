#!/usr/bin/env bash

if ! command -v httpyac &> /dev/null
then
    printf "\nhttpyac could not be found, please install: \n\n"
    printf "npm install -g httpyac\n"
    printf "OR\n"
    printf "yarn global add httpyac\n\n"
    exit 1
fi

httpyac --all HIVObservationHIVCondition.http

cp ./transform-test-data1.json ../tests/Debug/3e990510-1d51-4a25-abd4-3885cf9e8be9/
cp ./transform-test-data2.json ../tests/Debug/445beebb-e886-11ea-87c2-00155d017200/
