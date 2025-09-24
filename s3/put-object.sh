#!bin/bash

# andy-aws-youtube-my-example-bucket-ab
if [[ -z $1 ]]; then
    echo "bucket name is require"
    exit 1
fi

# images/camera-girl.jpeg
if [[ -z $2 ]]; then
    echo "key is required"
    exit 1
fi

# ./dummy/camera-girl.jpeg
if [[ -z $3 ]]; then
    echo "body is required"
    exit 1
fi

aws s3api put-object \
--bucket $1 \
--key $2 \
--body $3 \

exit 0