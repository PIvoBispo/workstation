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

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Pedro Ivo'
  )
  action :create
end
