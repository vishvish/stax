#
# Cookbook Name:: app
# Recipe:: default
#
# Copyright 2015, vishvish
#
# All rights reserved - Do Not Redistribute

package 'golang'
package 'git'

git '/var/www/app' do
  repository 'https://gist.github.com/54fca1174770197d9226.git'
  action :export
end

execute 'Build and run server' do
  command 'cd /var/www/app && go build server.go && ./server &'
end
