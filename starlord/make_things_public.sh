#!/bin/bash

cd "$(dirname "$0")"
cd ../

grep -r -l -i "visibility\s*=\s*\[[^\]]*\]" src/main/java/net 
