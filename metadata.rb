name             'wordcount'
maintainer       "wordcount"
maintainer_email "k.hakimzadeh@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs wordcount'
version          "0.1"

recipe            "wordcount::install", "Experiment setup for wordcount"
recipe            "wordcount::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "wordcount/group",
:description => "group parameter value",
:type => "string"

attribute "wordcount/user",
:description => "user parameter value",
:type => "string"


