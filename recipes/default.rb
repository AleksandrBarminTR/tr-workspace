#
# Cookbook:: test_book
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Installing GIT
if is_linux
    git_client 'default' do
        action :install
    end
end

# Create ~/dev-tools directory
directory '/dev-tools' do
    action :create
end

# Installing Correto JDK
# Creating a temporary directory
directory '/dev-tools/tmp' do
    action :create
end

# Add Maven Configuration File

# Remove downloaded archives
# directory '/dev-tools/tmp' do
#     recursive true
#     action :delete
# end