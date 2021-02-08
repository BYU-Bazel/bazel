load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

# Library of collection utilities.
java_library(
    name = "compacthashset",
    srcs = glob([
        "*.java",
    ]),
    deps = [
        "//third_party:guava",
        "//third_party:jsr305",
    ],
)
