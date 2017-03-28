p node[:packages]

# TODO: concat packages node[:platform] + :base
node[:packages][node[:platform]].each do |p|
    package p
end

node[:packages][:base].each do |p|
    package p
end