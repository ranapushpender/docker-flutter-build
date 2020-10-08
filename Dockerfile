# Build Starts Hers
FROM ubuntu:20.04
RUN mkdir /home/build
WORKDIR /home/build
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y wget unzip tar xz-utils git openjdk-8-jdk
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip && unzip *.zip && rm *.zip
RUN wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.22.0-stable.tar.xz && tar xfv ./flutter_linux_1.22.0-stable.tar.xz && rm flutter_linux_1.22.0-stable.tar.xz
RUN yes | ./tools/bin/sdkmanager --sdk_root=./tools --install "platform-tools" "platforms;android-28" "build-tools;28.0.3"
RUN yes | ./tools/bin/sdkmanager --sdk_root=./tools --install "platform-tools" "platforms;android-29" "build-tools;29.0.2"
RUN yes | ./tools/bin/sdkmanager --sdk_root=./tools --licenses
RUN apt install curl -y
RUN echo PATH=$PATH:/home/build/tools/bin:/home/build/tools/platform-tools:/home/build/flutter/bin >> /root/.bashrc
