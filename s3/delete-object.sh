#!bin/bash

if [[ -z $1 ]]; then
    echo "bucket name is required"
    exit 1
fi

if [[ -z $2 ]]; then
    echo "bucket name is required"
    exit 1
fi


aws s3api delete-object \
--bucket $1 \
--key $2 \

exit 0