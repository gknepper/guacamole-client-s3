# guacamole-client-s3
guacamole-client with a S3 bucket mounted internally to save the recordings

All the changes were made on Dockerfile only. The code base is guacamole-server latest

## Build

`docker build build ./ -t guacamole/guacamole-s3:1.5.5 -f Dockerfile --platform linux/amd64`


## Use

Overwrite the variable: `MOUNT_S3_PARAMETERS` with the parameter from https://github.com/awslabs/mountpoint-s3

A S3 directory /record will be mounted to read the recordings. 


## Pre-built Image

https://hub.docker.com/r/gabrielkm/guacamole-client-s3
