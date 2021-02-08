#!/bin/bash

cd "$(dirname "$0")"
cd ../

make_public() {
    SEARCH='visibility[[:space:]]*=[[:space:]]*\[[^\]*\]'
    REPLACE='visibility = ["\/\/visibility:public"]'
    find $1 -type f -exec sed -i "" "s/$SEARCH/$REPLACE/gi" {} \;
}

make_public ./src/main/java/net/starlark
make_public ./src/main/java/com/google
