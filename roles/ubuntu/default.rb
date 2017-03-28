file File.join(ENV["HOME"], "hello.txt") do
    content "This is mitamae"
end

include_role 'base'
