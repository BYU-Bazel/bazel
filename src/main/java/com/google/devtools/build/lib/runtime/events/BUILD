load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["*"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "events",
    srcs = glob(["*.java"]),
    deps = ["//src/main/java/com/google/devtools/build/lib/events"],
)
