#  ARM to x86 build
EXPERIMENTAL_DOCKER_DESKTOP_FORCE_QEMU=1 docker build ./  -t guacamole/guacamole-s3:1.5.5 -f Dockerfile --platform linux/amd64
EXPERIMENTAL_DOCKER_DESKTOP_FORCE_QEMU=1 docker build ./  -t guacamole/guacamole-s3:1.5.5 -f Dockerfile --platform linux/amd64 --progress=plain --no-cache --pull
EXPERIMENTAL_DOCKER_DESKTOP_FORCE_QEMU=1 docker buildx build  ./  -t guacamole/guacamole-s3:1.5.5 -f Dockerfile --platform linux/amd64 --progress=plain --no-cache --pull


# ARM build
docker buildx build  ./  -t guacamole/guacamole-s3-arm:1.5.5 -f Dockerfile --platform linux/arm64 --progress=plain --no-cache --pull
docker build ./  -t guacamole/guacamole-s3-arm:1.5.5 -f Dockerfile --platform linux/arm64
