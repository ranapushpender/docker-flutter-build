# Docker Flutter Build
[![Build Status](https://drone.stackweb.net:2053/api/badges/ranapushpender/docker-flutter-build/status.svg)](https://drone.stackweb.net:2053/ranapushpender/docker-flutter-build)
### Usage
* Pull the latest docker image using 
```
docker pull ranapushpender/docker-flutter-build
```
* Start the container using the following  

```
docker run --name build-container \
            -v /path/to/flutter/project:/home/project \
            -it ranapushpender/docker-flutter-build bash 
```
* Change to your project directory and run 
```
flutter build apk
```
* Use the following command when done
```
exit
```
