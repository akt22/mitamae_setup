node[:packages][:platform].each do |p|
    package p
end

node[:packages].each do |p|
    package p
end