# TODO: concat packages node[:platform] + :base
_node = node[:packages].merge(node[:packages][node[:platform]])

p _node

_node.each do |p|
    package p
end