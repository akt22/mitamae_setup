# execute 'Install Homebrew' do
#   command 'sudo xcodebuild -license && xcode-select --install'
#   command 'yes "" | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
#   not_if 'test $(which /usr/local/bin/brew)'
# end

file File.join(ENV["HOME"], "hello.txt") do
    content "This is darwin roles."
end

include_role 'base'