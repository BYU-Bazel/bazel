load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]) + [
        "//src/main/java/com/google/devtools/build/lib/analysis/starlark/annotations/processor:srcs",
    ],
    visibility = ["//visibility:public"],
)

java_library(
    name = "annotations",
    exported_plugins = ["//src/main/java/com/google/devtools/build/lib/analysis/starlark/annotations/processor:annotation_preprocessor"],
    exports = [":annotations_internal"],
)

java_library(
    name = "annotations_internal",
    srcs = glob(["*.java"]),
)
