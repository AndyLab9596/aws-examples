#!bin/bash

# input: andy-aws-youtube-my-example-bucket-ab-copy
if [[ -z $1 ]]; then
    echo "bucket name is required"
    exit 1
fi

aws s3api delete-bucket \
--bucket $1 \

exit 0