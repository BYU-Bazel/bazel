java_binary(
    name = "bazel",
    main_class = "starlord.Main",
    srcs = [
        "Main.java",
    ],
    deps = [
        "//src/main/java/com/google/devtools/build/skyframe",
        "//src/main/java/com/google/devtools/build/lib/cmdline",
        "//src/main/java/com/google/devtools/build/lib/packages",
        "//src/main/java/net/starlark/java/syntax",
        "//src/main/java/net/starlark/java/eval",
        "//src/main/java/net/starlark/java/annot",
        "//src/main/java/net/starlark/java/annot/processor",
    ],
    visibility = ["//visibility:public"],
)
