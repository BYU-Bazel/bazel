load("@rules_java//java:defs.bzl", "java_proto_library")
load("//tools/build_rules:utilities.bzl", "java_library_srcs")
load("@rules_proto//proto:defs.bzl", "proto_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

java_library_srcs(
    name = "dist_jars",
    deps = [":build_event_stream_java_proto"],
)

java_proto_library(
    name = "build_event_stream_java_proto",
    # The Bazel IntelliJ plugin uses this.
    visibility = ["//visibility:public"],
    deps = ["build_event_stream_proto"],
)

proto_library(
    name = "build_event_stream_proto",
    srcs = ["build_event_stream.proto"],
    deps = [
        "//src/main/protobuf:command_line_proto",
        "//src/main/protobuf:failure_details_proto",
        "//src/main/protobuf:invocation_policy_proto",
    ],
)
