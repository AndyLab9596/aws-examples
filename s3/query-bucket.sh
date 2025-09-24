#!bin/bash

aws s3api list-buckets --query "Buckets[?Name == 'andy-aws-youtube-my-example-bucket-ab'].Name" --output text

exit 0