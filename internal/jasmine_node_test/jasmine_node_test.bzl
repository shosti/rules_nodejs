# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""NodeJS testing

These rules let you run tests outside of a browser. This is typically faster
than launching a test in Karma, for example.
"""

def jasmine_node_test(
        name,
        srcs = [],
        data = [],
        deps = [],
        expected_exit_code = 0,
        tags = [],
        **kwargs):
    """Runs tests in NodeJS using the Jasmine test runner.

    To debug the test, see debugging notes in `nodejs_test`.

    Args:
      name: name of the resulting label
      srcs: JavaScript source files containing Jasmine specs
      data: Runtime dependencies which will be loaded while the test executes
      deps: Other targets which produce JavaScript, such as ts_library
      expected_exit_code: The expected exit code for the test. Defaults to 0.
      tags: bazel tags applied to test
      **kwargs: remaining arguments are passed to the test rule
    """

    fail("""
        ERROR: @build_bazel_rules_nodejs no longer provides jasmine_node_test
        Instead, add a devDependency on @bazel/jasmine
        and change the load statement to
        load("@npm_bazel_jasmine//:index.bzl", "jasmine_node_test")
        """)
