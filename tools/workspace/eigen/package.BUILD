# -*- python -*-
#
# Copyright 2022 Stéphane Caron

package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "eigen",
    hdrs = glob([
        "Eigen/**",
        "unsupported/Eigen/**",
    ]),
    includes = ["."],
    defines = [
        # See https://github.com/asherikov/qpmad/issues/9
        # "EIGEN_MPL2_ONLY",
    ],
)
