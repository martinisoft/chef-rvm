name              'rvm'
maintainer        'Aaron Kalin'
maintainer_email  'akalin@martinisoftware.com'
license           'Apache-2.0'
description       'Manages system-wide and per-user RVMs and manages installed Rubies via Chef Resources.'

version           '0.10.1'
source_url        'https://github.com/martinisoft/chef-rvm'
issues_url        'https://github.com/martinisoft/chef-rvm/issues'

chef_version      '>= 12.9'

%w(amazon centos redhat scientific oracle fedora debian ubuntu).each do |os|
  supports os
end
