# Bazel's Starlark interpreter

licenses(["notice"])

load("@rules_java//java:defs.bzl", "java_library")

filegroup(
    name = "srcs",
    srcs = ["BUILD"],
    visibility = [":bazel"],
)

# FIX: Publically visible starlark java parser.
java_library(
    name = "starlark_api",
    srcs = glob([
        "//src/main/java/net/starlark/java/...",
    ]),
    visibility = ["//visibility:public"],
)

# The java.starlark.net project, including its tests.
package_group(
    name = "starlark",
    packages = [
        "//src/main/java/net/starlark/java/...",
        "//src/test/java/net/starlark/java/...",
    ],
)

# Bazel and its tests.
package_group(
    name = "bazel",
    packages = ["//src/..."],
)

# Approved clients of java.starlark.net.
package_group(
    name = "clients",
    packages = ["//..."],  # anyone
)
