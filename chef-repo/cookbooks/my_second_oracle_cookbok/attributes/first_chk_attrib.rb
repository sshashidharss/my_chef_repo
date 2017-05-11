#
# Cookbook Name:: my_second_oracle_cookbok
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
default['my_second_oracle_cookbok']['testvalue'] = 'my test values of cookbook'
Chef::Log.info("my attribues is #{node['my_second_oracle_cookbok']['testvalue']}")



default['my_second_oracle_cookbok']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin' ]
default['my_second_oracle_cookbok']['sudo']['users']  = [ 'jerry', 'greg']
