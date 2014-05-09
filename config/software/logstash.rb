#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "logstash"
version "1.4.1"

dependency "jre"

source :url => "https://download.elasticsearch.org/logstash/logstash/logstash-1.4.1.tar.gz",
       :sha1 => "834599d28ce50012c221ece7a6783c5943221e36"

relative_path "logstash"

build do
  command "mkdir -p #{install_dir}/log"
  command "mkdir -p #{install_dir}/etc/logstash.d"
  command "mkdir -p #{install_dir}/data"
  command "mkdir -p #{install_dir}/patterns"
  command "mkdir -p #{install_dir}/tmp"
  command "mkdir -p #{install_dir}/service"

  command "cp logstash-#{version}-flatjar.jar #{install_dir}/bin/logstash.jar"
end
