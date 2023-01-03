# -*- python -*-
#
# Copyright 2022 Stéphane Caron

load("//tools/workspace/eigen:repository.bzl", "eigen_repository")
load("//tools/workspace/qpmad:repository.bzl", "qpmad_repository")
load("//tools/workspace/rules_foreign_cc:repository.bzl", "rules_foreign_cc_repository")

def add_default_repositories():
    """
    Declares workspace repositories for all dependencies. This is intended to
    be loaded and called from a WORKSPACE file.
    """
    eigen_repository()
    qpmad_repository()
    rules_foreign_cc_repository()
