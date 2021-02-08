load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "extrema",
    srcs = ["Extrema.java"],
    deps = ["//third_party:guava"],
)

# Library of collection utilities.
java_library(
    name = "collect",
    srcs = glob([
        "*.java",
    ]),
    deps = [
        "//src/main/java/com/google/devtools/build/lib/collect/compacthashset",
        "//src/main/java/com/google/devtools/build/lib/collect/nestedset",
        "//src/main/java/com/google/devtools/build/lib/concurrent",
        "//src/main/java/com/google/devtools/build/lib/skyframe/serialization/autocodec",
        "//third_party:guava",
        "//third_party:jsr305",
        "//third_party/protobuf:protobuf_java",
    ],
)
