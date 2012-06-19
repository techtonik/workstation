root = File.absolute_path(File.dirname(__FILE__))

json_attribs root + "/config-solo.json"
cookbook_path [root+"/cookbooks", root+"/site-cookbooks"]

