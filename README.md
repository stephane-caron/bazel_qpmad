# bazel_qpmad

Rules for building C++ targets that depend on [qpmad](https://github.com/asherikov/qpmad).

## Setup

Add the following to your ``WORKSPACE`` file:

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_qpmad",
    url = "https://github.com/stephane-caron/bazel_qpmad/archive/refs/tags/v0.1.0.tar.gz",
    sha256 = "...",
    strip_prefix = "bazel_qpmad-0.1.0",
)

load("@bazel_qpmad//tools/workspace:default.bzl", add_bazel_qpmad = "add_default_repositories")

# This creates the @eigen and @qpmad dependencies
add_bazel_qpmad()
```

You can then build C++ targets that depend on ``@qpmad``:

```python
cc_binary(
    name = "demo",
    srcs = ["demo.cpp"],
    deps = ["@qpmad"],
)
```

## Example

From this repository, run:

```console
./tools/bazelisk run //examples:demo
```

This example should output:

```
x =        1        2        3        4 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875 -0.71875
```
