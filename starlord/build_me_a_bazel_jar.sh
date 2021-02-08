#!/bin/bash

cd "$(dirname "$0")"
cd ../

bazel build //starlord:bazel_deploy.jar
EXIT_CODE=$?
if [[ $EXIT_CODE != 0 ]]
then
    exit $EXIT_CODE
fi

mv bazel-bin/starlord/bazel_deploy.jar starlord/bazel_deploy.jar
