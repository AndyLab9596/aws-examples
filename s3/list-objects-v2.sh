#!bin/bash

# input: andy-aws-youtube-my-example-bucket-ab-copy
if [[ -z $1 ]]; then
    echo "bucket name is required"
    exit 1
fi

aws s3api list-objects-v2 \
  --bucket $1 \
  --query "Contents[].{Key: Key, Size: Size}" \
  --output table

exit 0