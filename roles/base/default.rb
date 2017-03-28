p node[:packages]

node[:packages][node[:platform]].each do |p|
    package p
end

node[:packages][:base].each do |p|
    package p
end