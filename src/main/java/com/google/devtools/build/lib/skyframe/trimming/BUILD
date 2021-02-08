# Classes which provide support for automatically trimming configuration to avoid wasted work during a build.

load("@rules_java//java:defs.bzl", "java_library")

package(
    default_visibility = ["//visibility:public"],
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "trimmed_configuration_cache",
    srcs = [
        "ConfigurationComparer.java",
        "KeyAndState.java",
        "TrimmedConfigurationCache.java",
    ],
    deps = [
        "//third_party:auto_value",
        "//third_party:guava",
    ],
)
