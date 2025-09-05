# Bazel rules for qpmad

Workspace rules for building C++ targets that depend [qpmad](https://github.com/asherikov/qpmad).

## Prerequisites

These rules requires Eigen installed on your system with CMake configuration files. For example, on Ubuntu 22.04:

```console
sudo apt install libeigen3-dev
```

## Setup

Add to your `WORKSPACE` file the `http_archive` instruction from the [release page](https://github.com/stephane-caron/bazel_qpmad/releases/tag/v1.4.0).

You can then define C++ targets that depend on ``@qpmad``:

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
