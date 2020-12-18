name 'tr-workspace'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'tr-workspace::default', 
        'tr-workspace::corretto_8',
        'tr-workspace::corretto_11',
        'tr-workspace::apache_maven',
        'tr-workspace::gradle',
        'tr-workspace::vscode',
        'tr-workspace::intellij_idea'

# Specify a custom source for a single cookbook:
cookbook 'tr-workspace', path: '.'

cookbook 'git', '~> 10.1.0', :supermarket
