# -*- python -*-
#
# Custom build file to use the package with Bazel.

package(default_visibility = ["//visibility:public"])

load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
)

cmake(
    name = "qpmad",
    lib_source = ":srcs",
    cache_entries = {
        "CMAKE_BUILD_TYPE": "Release",
    },
    deps = [
        "@eigen",
    ],
    out_include_dir = "include",
    out_headers_only = True,
)
