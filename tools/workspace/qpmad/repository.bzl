# -*- python -*-

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def qpmad_repository(
        version = "1.3.0",
        sha256 = "c98511961a5d8d65ebb7d3bbc21f5c9410309ea4991b837d1f8211accd77480e"):
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
