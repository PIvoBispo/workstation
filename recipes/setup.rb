package 'tree' do
  action :install
end

package 'emacs'

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content "This server is the property of Pedro Ivo
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']} mhz
  MEMORY: #{node['memory']['total']}	'
"
  owner 'root'
  group 'root'
end
