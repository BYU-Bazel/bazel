cd "$(dirname "$0")/../"

rm -rf patch_output/* 2> /dev/null || true

bazel build //src/main/java/net/starlark/java:starlark_api_deploy.jar

mkdir patch_output 2> /dev/null || true

cp bazel-bin/src/main/java/net/starlark/java/starlark_api_deploy.jar patch_output/starlark_api_deploy.jar
