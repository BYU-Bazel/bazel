#!/bin/bash

cd "$(dirname "$0")"
cd ../

FILE=starlord/bazel_deploy.jar
if test -f "$FILE"; 
then
    jar tvf "$FILE"
else
    echo "$FILE not found... You need to build a bazel jar first :P"
fi

