#!/bin/bash

cd "$(dirname "$0")"
ANTLR_JAR_PATH=./bin/antlr-3.4-complete.jar

if [ ! -f "$ANTLR_JAR_PATH" ]; then

    mkdir ./bin
    wget -q http://www.antlr3.org/download/antlr-3.4-complete.jar -P ./bin

    if [ ! -f "$ANTLR_JAR_PATH" ]; then
        echo "Cannot download antlr-3.4-complete.jar."
        exit 1
    fi
fi

java -Xmx1024m -jar "$ANTLR_JAR_PATH" -make ./MySQL.g -o ../ -Xmaxswitchcaselabels 30