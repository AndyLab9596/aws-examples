#!bin/bash

# input: andy-aws-youtube-my-example-bucket-ab-copy
if [[ -z $1 ]]; then
    echo "bucket name is required"
    exit 1
fi

aws s3api create-bucket \
--bucket $1 \
--region ap-southeast-1 \
--create-bucket-configuration LocationConstraint=ap-southeast-1 \
--query Location \
--output text \

exit 0