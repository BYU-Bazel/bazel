load("@rules_java//java:defs.bzl", "java_plugin")

# Description:
#   A preprocessor for Starlark annotations.
package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

java_plugin(
    name = "annotation_preprocessor",
    srcs = glob(["*.java"]),
    processor_class = "com.google.devtools.build.lib.analysis.starlark.annotations.processor.StarlarkConfigurationFieldProcessor",
    deps = [
        "//src/main/java/com/google/devtools/build/lib/analysis/starlark/annotations:annotations_internal",
        "//src/main/java/net/starlark/java/annot",
        "//third_party:guava",
    ],
)
