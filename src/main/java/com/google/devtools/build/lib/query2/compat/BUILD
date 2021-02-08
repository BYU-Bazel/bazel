load("@rules_java//java:defs.bzl", "java_library")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["*"]),
    visibility = ["//visibility:public"],
)

java_library(
    name = "fake-load-target",
    srcs = [
        "FakeLoadTarget.java",
    ],
    deps = [
        "//src/main/java/com/google/devtools/build/lib/cmdline",
        "//src/main/java/com/google/devtools/build/lib/packages",
        "//src/main/java/net/starlark/java/syntax",
        "//third_party:guava",
    ],
)
