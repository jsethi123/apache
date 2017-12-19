#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
package 'Install Apache' do
    package_name 'httpd'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end


service 'httpd' do
  action [:enable, :start]
end
