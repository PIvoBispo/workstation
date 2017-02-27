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
  content 'This server is the property of Pedro Ivo'
  owner 'root'
  group 'root'
end
