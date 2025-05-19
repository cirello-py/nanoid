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

from collections.inline_array import InlineArray
from random import randint


fn nanoid[
    length: Int = 12
](
    *,
    alphabet: String = "_-0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
) -> String:
    """
    Generate a random string of the given length using the given alphabet.
    """
    inner = InlineArray[Int32, length](fill=0)
    randint(inner.unsafe_ptr(), length, 0, len(alphabet) - 1)
    str = String(capacity=length)

    @parameter
    for i in range(length):
        str += alphabet[inner[i]]
    return str
