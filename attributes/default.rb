#
# Cookbook Name:: ucspi-tcp
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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
#

default["ucspi-tcp"]["packages"] = value_for_platform_family(
  "debian" => %w(
    ucspi-tcp
  ),
  "suse" => %w(
    ucspi-tcp
  )
)

default["ucspi-tcp"]["zypper"]["enabled"] = true
default["ucspi-tcp"]["zypper"]["alias"] = "network"
default["ucspi-tcp"]["zypper"]["title"] = "Networking"
default["ucspi-tcp"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/network/openSUSE_#{node["platform_version"]}/"
default["ucspi-tcp"]["zypper"]["key"] = "#{node["ucspi-tcp"]["zypper"]["repo"]}repodata/repomd.xml.key"
