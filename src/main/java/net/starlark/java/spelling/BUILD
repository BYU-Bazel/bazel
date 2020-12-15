# The spelling checker used by the Starlark interpreter.

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//src:__subpackages__"],
)

java_library(
    name = "spelling",
    srcs = ["SpellChecker.java"],
    visibility = ["//visibility:public"],
    deps = ["//third_party:jsr305"],
)
