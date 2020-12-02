# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'test_book'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'test_book::default', 
        'test_book::corretto_8',
        'test_book::corretto_11',
        'test_book::apache_maven',
        'test_book::gradle',
        'test_book::vscode',
        'test_book::intellij_idea'

# Specify a custom source for a single cookbook:
cookbook 'test_book', path: '.'

cookbook 'git', '~> 10.1.0', :supermarket