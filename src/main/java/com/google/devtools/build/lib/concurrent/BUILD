load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

# Library of concurrency utilities.
java_library(
    name = "concurrent",
    srcs = glob(["*.java"]),
    deps = [
        "//third_party:flogger",
        "//third_party:guava",
        "//third_party:jsr305",
    ],
)
