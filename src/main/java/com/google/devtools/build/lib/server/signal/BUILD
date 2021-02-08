load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "signal",
    srcs = [
        "InterruptSignalHandler.java",
    ],
    deps = [
        "//third_party:guava",
    ],
)
