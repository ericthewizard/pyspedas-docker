#!/usr/bin/env zsh

docker build --build-arg SPEDAS_DATA_DIR=/data --build-arg MMS_USERNAME=$MMS_USERNAME --build-arg MMS_PASSWORD="$MMS_PASSWORD" -f mms.Dockerfile -t mms_tests_image .
docker run -it -v /Users/eric/data/:/data mms_tests_image > test_output.txt