#
# Cookbook Name:: my_second_oracle_cookbok
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Chef::Log.info("my attribues is #{node['my_second_oracle_cookbok']['testvalue']}")


run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end

Chef::Log.info("value for my my_second_oracle_cookbok cookbook is =#{node['my_second_oracle_cookbok']['portnumber']}")
Chef::Log.info("value for my my_second_oracle_cookbok cookbook is = #{node['my_second_oracle_cookbok']['forwardport']}")
=begin
service "sshd" do
  action :nothing
end

template '/root/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['my_second_oracle_cookbok']['sudo']['groups'],
    sudoers_users: node['my_second_oracle_cookbok']['sudo']['users']
  })
  notifies :start, 'service[sshd]', :delayed
  
end
=end
