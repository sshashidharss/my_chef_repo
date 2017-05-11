#
# Cookbook Name:: my_second_oracle_cookbok
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Chef::Log.info("my attribues is #{node['my_second_oracle_cookbok']['testvalue']}")

template '/root/catalina.conf' do
  source 'catalina.erb'

 variables({
    forward: node['my_second_oracle_cookbok']['portnumber']
  })
end