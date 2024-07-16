# Check if the S3_BUCKET variable is not null
if [ -n "$S3_BUCKET" ]; then
    echo "The variable S3_BUCKET is not null. Trying to start mount-s3 $S3_BUCKET /record"
    /usr/bin/mount-s3 $S3_BUCKET /record
else
    echo "The variable S3_BUCKET is null. bypassing mount-s3"
fi