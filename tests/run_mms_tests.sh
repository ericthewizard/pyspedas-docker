docker build --build-arg MMS_USERNAME=$MMS_USERNAME --build-arg MMS_PASSWORD="$MMS_PASSWORD" -f mms -t myimage .
docker run myimage > test_output.txt