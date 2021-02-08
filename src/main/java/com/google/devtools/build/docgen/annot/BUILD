load("@rules_java//java:defs.bzl", "java_library")

licenses(["notice"])

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["*"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "annot",
    srcs = [
        "DocCategory.java",
        "DocumentMethods.java",
        "StarlarkConstructor.java",
    ],
)
