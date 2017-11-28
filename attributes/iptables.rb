default['firewall']['iptables']['defaults'][:policy] = {
  input: 'DROP',
  forward: 'DROP',
  output: 'ACCEPT',
}
default['firewall']['iptables']['defaults'][:ruleset] = {
	'*nat' => 1,
	':PREROUTING ACCEPT' => 2,
	':POSTROUTING ACCEPT' => 3,
	':OUTPUT ACCEPT' => 4,
	'COMMIT_NAT' => 100,
	'*filter' => 101,
	":INPUT #{node['firewall']['iptables']['defaults'][:policy][:input]}" => 102,
	":FORWARD #{node['firewall']['iptables']['defaults'][:policy][:forward]}" => 103,
	":OUTPUT #{node['firewall']['iptables']['defaults'][:policy][:output]}" => 104,
	'COMMIT_FILTER' => 200
}

default['firewall']['ubuntu_iptables'] = false
default['firewall']['redhat7_iptables'] = false
default['firewall']['allow_established'] = true
default['firewall']['ipv6_enabled'] = true
