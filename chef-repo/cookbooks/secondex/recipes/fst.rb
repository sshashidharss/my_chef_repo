
cookbook_file '/root/lcnse.txt' do
  source 'lcnse.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end