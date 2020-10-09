# Docker Flutter Build
[![Build Status](https://drone.stackweb.net/api/badges/ranapushpender/docker-flutter-build/status.svg)](https://drone.stackweb.net:2053/ranapushpender/docker-flutter-build)
### Usage
* Pull the latest docker image using 
```
docker pull ranapushpender/docker-flutter-build
```
* Start the container using the following
```
 docker run --name build-container \
            -v /path/to/flutter/project:/home/project \
            -it ranapushpender/docker-flutter-build:latest bash 
```
* Change to your project directory and run 
```
flutter build apk
```
* Use the following command when done
```
exit
```

### Notes
* Builds tagged with "latest " denote the latest tagged build on github
* Builds for all tags on github are tagged with their respective versions
```
ranapushpender/docker-flutter-build:version
```

### Source
* [Github](https://github.com/ranapushpender/docker-flutter-build)
