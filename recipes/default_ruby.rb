#
# Cookbook Name:: rvm
# Recipe:: default_ruby
#
# Copyright 2010, Fletcher Nichol
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

unless node[:rvm][:rubies].empty?
  bash "set default RVM ruby to #{node[:rvm][:default_ruby]}@#{node[:rvm][:default_gemset]}" do
    user "root"
    code %{source /etc/profile.d/rvm.sh && rvm #{node[:rvm][:default_ruby]}@#{node[:rvm][:default_gemset]} --default}
    not_if %{bash -c "source /etc/profile.d/rvm.sh && rvm list default string | grep -q '^#{node[:rvm][:default_ruby]}@#{node[:rvm][:default_gemset]}'"}
  end
end
