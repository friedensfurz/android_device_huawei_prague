#
# Copyright 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

if [[ -e vendor/aosp ]] || [[ -e vendor/DarkJoker360 ]]; then
add_lunch_combo aosp_prague-userdebug
elif [[ -e vendor/dot ]]; then
add_lunch_combo dot_prague-userdebug
elif [[ -e vendor/lineage ]]; then
add_lunch_combo lineage_prague-userdebug
elif [[ -e vendor/aoscp ]]; then
add_lunch_combo aoscp_prague-userdebug
elif [[ -e vendor/candy ]]; then
add_lunch_combo candy_prague-userdebug
fi
