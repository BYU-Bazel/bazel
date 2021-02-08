load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["*"]),
    visibility = ["//visibility:public"],
)

# Description:
#   Main Java code for Bazel
java_library(
    name = "cache",
    srcs = ["RepositoryCache.java"],
    deps = [
        "//src/main/java/com/google/devtools/build/lib/vfs",
        "//third_party:guava",
        "//third_party:jsr305",
    ],
)

java_library(
    name = "events",
    srcs = ["RepositoryCacheHitEvent.java"],
    deps = [
        "//src/main/java/com/google/devtools/build/lib/events",
    ],
)
