# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'webpolicy'

# Where to find external cookbooks:

# run_list: chef-client will run these recipes in the order specified.
run_list 'apache::default'

#default_source :supermarket

default_source :chef_server, "https://chef.automate-demo.com/organizations/automate"

#default_source :chef_repo, "../cookbooks"

#pulls cookbooks from an Artifactory server. Requires either artifactory_api_key to be set in config.rb or
# ARTIFACTORY_API_KEY to be set in your environment.
#default_source :artifactory, "https://artifactory.example/api/chef/my-supermarket" 

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
cookbook 'apache', ">= 0.3.1"
override['apache']['port'] = 9090
override['apache']['message'] = "Hello UOB"