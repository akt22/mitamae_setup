# T[ODO: concat packages node[:platform] + :base
node[:packages].concat(node[:packages][node[:platform]])

p node[:packages]

node[:packages].each do |p|
    package p
end