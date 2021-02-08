load("@rules_java//java:defs.bzl", "java_library")

package(
    default_visibility = ["//visibility:public"],
)

filegroup(
    name = "srcs",
    srcs = glob(["*"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "noop_connectivity",
    srcs = ["NoOpConnectivityModule.java"],
    deps = [
        ":connectivity_status",
        "//src/main/java/com/google/devtools/build/lib:runtime",
    ],
)

java_library(
    name = "connectivity_status",
    srcs = [
        "ConnectivityStatus.java",
        "ConnectivityStatusProvider.java",
    ],
)
