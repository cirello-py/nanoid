# Copyright 2025 U. Cirello
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from testing import *
from nanoid import nanoid
from random import seed


def test_nanoid():
    seed(0)
    assert_equal("cv3WKwem0YwI", nanoid())
    seed(0)
    assert_equal("cv3WKwem0YwIEaC0CLccx", nanoid[length=21]())
    seed(0)
    assert_equal("261319339392", nanoid[length=12]("1234567890"))
