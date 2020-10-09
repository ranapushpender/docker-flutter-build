!#/bin/sh
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USER" --password-stdin
docker build -t ranapushpender/docker-flutter-build:latest .
docker build -t ranapushpender/docker-flutter-build:$TAG_NAME .
docker push ranapushpender/docker-flutter-build:latest
docker push ranapushpender/docker-flutter-build:$TAG_NAME