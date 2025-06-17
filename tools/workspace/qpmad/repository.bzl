# -*- python -*-

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def qpmad_repository(
        version = "1.4.0",
        sha256 = "6034bfd895bda550d3e1d5906634bc34b90f21d390c2662ac33ea5024cbfa4ed"):
    """
    Clone repository from GitHub and make its targets available for binding.

    Args:
        version: version of the library to get.
        sha256: SHA-256 checksum of the downloaded archive.
    """
    http_archive(
        name = "qpmad",
        urls = [
            "https://github.com/asherikov/qpmad/archive/refs/tags/{}.tar.gz".format(version),
        ],
        sha256 = sha256,
        strip_prefix = "qpmad-{}".format(version),
        build_file = Label("//tools/workspace/qpmad:package.BUILD"),
    )
