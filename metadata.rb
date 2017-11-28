name 'firewall'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Provides a set of primitives for managing firewalls and associated rules.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.6.9001'

supports 'centos'
supports 'debian'
supports 'ubuntu'
supports 'windows'

depends 'chef-sugar', '<=3.5.0' # 3.6.0 depends on newer version of ruby

source_url 'https://github.com/chef-cookbooks/firewall'
issues_url 'https://github.com/chef-cookbooks/firewall/issues'
chef_version '>= 12.5' if respond_to?(:chef_version)
