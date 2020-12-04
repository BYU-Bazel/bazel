# Bazel LS Patch

In order to make the starlark language parser public, we edited the BUILD files to allow a starlark jar to be built. To get this jar, run:

```
./scripts/create_starlark_jar.sh
```

This will create a `patch_output/starlark_api_deploy.jar` file which contains the starlark parser API.
