#!/bin/bash

# Get the name of the current project directory
CURRENT_DIRECTORY="${PWD##*/}"

# Change the name of the ino file to match the directory name
mv esp8266-mqtt-boilerplate.ino "$CURRENT_DIRECTORY".ino

# Change placeholder values
sed "s/esp8266-mqtt-boilerplate/$CURRENT_DIRECTORY/g" config.template.h > config.template.h.tmp
mv  config.template.h.tmp  config.template.h

# Commit the change
git add .
git commit -m "initialize project"
