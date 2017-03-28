p node[:packages]
node[:packages].each do |p|
    package p
end