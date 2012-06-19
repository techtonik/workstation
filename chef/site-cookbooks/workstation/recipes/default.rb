Chef::Log.info('--- Install basic packages ---')
package 'git'
package 'mercurial'

Chef::Log.info('--- Download more cookbooks ---')
# because vim is not packaged as 'vim' on Fedora


