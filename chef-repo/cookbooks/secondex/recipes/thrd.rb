Chef::Log.info("my platform is #{node['platform']}")

if node['platforn'] == 'windows'
    Chef::Log.info("I am in windows")
else
    Chef::Log.info("I am ohter os")
end