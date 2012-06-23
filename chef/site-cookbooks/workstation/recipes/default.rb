Chef::Log.info('--- Install basic packages ---')
package 'git'
package 'mercurial'

Chef::Log.info('--- Packages by external cookbooks ---')
# external cookbooks are specified in Cheffile managed
# by Librarian-Chef. At the end of tile there is a failed
# attempt to manage them from recipe itself.

include_recipe 'vim'



=begin
# ^^^ this is multiline Ruby comment 
# below is a failed attempt to Download dependent cookbooks
# when they are not found from recipe itself. Now it is made
# by Librarian as an extra prepatation step.

Chef::Log.info('--- Download more cookbooks ---')
# because vim is not packaged as 'vim' on Fedora
# calculate root path to the 3rd party cookbooks
thisdir = File.absolute_path(File.dirname(__FILE__))
thiscook = File.dirname(File.dirname(thisdir))
cookroot = File.dirname(thiscook) + "/cookbooks"

git cookroot+"/vim" do
  repository "git://github.com/opscode-cookbooks/vim.git"
  notifies :run, "script[chef restart]"
end

script "chef restart" do
  action :nothing
  interpreter "python"
  code "import sys; sys.exit('New Cookbooks downloaded. Please restart.')"
end

execute "stub" do
  action :nothing
  include_recipe 'vim'
  # this gives
  #   FATAL: NoMethodError: undefined method `include_recipe' for Chef::Resource::Execute
end
=end
