# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'proxypolicy'


# run_list: chef-client will run these recipes in the order specified.
run_list 'recipe[haproxy::default]'

# Where to find external cookbooks:
#default_source :supermarket
#default_source :chef_repo, "../cookbooks"
#pulls cookbooks from an Artifactory server. Requires either artifactory_api_key to be set in config.rb or
# ARTIFACTORY_API_KEY to be set in your environment.
#default_source :artifactory, "https://artifactory.example/api/chef/my-supermarket" 

default_source :chef_server, "https://chef.automate-demo.com/organizations/automate"


# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
cookbook 'haproxy', ">= 0.2.0"

