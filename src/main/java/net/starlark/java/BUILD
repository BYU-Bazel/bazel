# Bazel's Starlark interpreter

licenses(["notice"])

load("@rules_java//java:defs.bzl", "java_binary", "java_library")

filegroup(
    name = "srcs",
    srcs = ["BUILD"],
    visibility = [":bazel"],
)

# FIX: Publically visible starlark java parser.
java_binary(
    name = "starlark_api",
    srcs = [
        "Empty.java",
    ],
    deps = [
        "//src/main/java/net/starlark/java/lib/json:json",
        "//src/main/java/net/starlark/java/eval:eval",
        "//src/main/java/net/starlark/java/syntax:syntax",
        "//src/main/java/net/starlark/java/spelling:spelling",
        "//src/main/java/net/starlark/java/annot:annot",
    ],
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
