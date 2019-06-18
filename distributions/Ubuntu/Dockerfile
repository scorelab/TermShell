# Pulling Ubuntu bionic (18.04)
FROM ubuntu:bionic

# Install basic dependencies
RUN apt-get update && apt-get -y install build-essential procps

# Install C++ tools
RUN apt-get -y install cmake cppcheck valgrind \
# Install Gedit editor 
    gedit

# Volume mounted as workspace
VOLUME [ "/ws" ]
WORKDIR ws

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Set the default shell to bash instead of sh
ENV SHELL /bin/bash


