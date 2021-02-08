load("@rules_java//java:defs.bzl", "java_library")

licenses(["notice"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

# Starlark json module
java_library(
    name = "json",
    srcs = ["Json.java"],
    visibility = ["//visibility:public"],
    deps = [
        "//src/main/java/net/starlark/java/annot",
        "//src/main/java/net/starlark/java/eval",
        "//src/main/java/net/starlark/java/syntax",
    ],
)
