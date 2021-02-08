load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

# Clock classes.
java_library(
    name = "clock",
    srcs = glob([
        "*.java",
    ]),
    deps = [
        "//src/main/java/com/google/devtools/build/lib/concurrent",
    ],
)
