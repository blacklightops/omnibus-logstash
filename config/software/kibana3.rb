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

name "kibana3"
version "a50a913f2368c8613dbff91eab30c399c0ad4838"
dependency "rsync"
dependency "nginx"
dependency "kibana"

source :git => "https://github.com/elasticsearch/kibana"

relative_path "kibana3"


build do
  command "#{install_dir}/embedded/bin/rsync -a . #{install_dir}/embedded/kibana3/"
  command "sed -i 's/:9200//' #{install_dir}/embedded/kibana3/config.js"
end
