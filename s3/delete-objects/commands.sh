#!bin/bash

aws s3api delete-objects \
--bucket andy-aws-youtube-my-example-bucket-ab \
--delete file://delete.json
# file://<file-path-relative-with-pwd-or-absolute-path>

exit 0