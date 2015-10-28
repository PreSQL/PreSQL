#!/bin/bash

cd "$(dirname "$0")"
ANTLR_JAR_PATH=./bin/antlr-3.4-complete.jar
GENERATE_FILES=false
TARGET_DIRECTORY=..

if [ ! -f "$TARGET_DIRECTORY/MySQLLexer.c" ];  then GENERATE_FILES=true; fi
if [ ! -f "$TARGET_DIRECTORY/MySQLLexer.h" ];  then GENERATE_FILES=true; fi
if [ ! -f "$TARGET_DIRECTORY/MySQLParser.c" ]; then GENERATE_FILES=true; fi
if [ ! -f "$TARGET_DIRECTORY/MySQLParser.h" ]; then GENERATE_FILES=true; fi

if [ "$GENERATE_FILES" == true ]; then
    if [ ! -f "$ANTLR_JAR_PATH" ]; then

        mkdir ./bin
        wget -q http://www.antlr3.org/download/antlr-3.4-complete.jar -P ./bin

        if [ ! -f "$ANTLR_JAR_PATH" ]; then
            exit 1
        fi
    fi

    java -Xmx1024m -jar "$ANTLR_JAR_PATH" -make ./MySQL.g -o "$TARGET_DIRECTORY" -Xmaxswitchcaselabels 30
fi
