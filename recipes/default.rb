#
# Cookbook Name:: thinkup
# Recipe:: default
# Author:: Guilhem Lettron <guilhem.lettron@youscribe.com>
#
# Copyright 2013, Societe Publica.
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

application "thinkup" do
  path "/opt/thinkup"
  repository node['thinkup']['repository']
  revision node['thinkup']['revision']

  owner node[:apache][:user]
  group node[:apache][:user]

  packages["php-pear","php5-mysql","php5-curl"]

  mod_php_apache2
end
