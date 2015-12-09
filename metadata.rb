name             'teragen'
maintainer       "teragen"
maintainer_email "shelanrc |at| gmail |dot| com"
license          "Apache v2.0"
description      'Installs/Configures/Runs wordcount'
version          "0.1"

recipe            "teragen::install", "Experiment setup for wordcount"
recipe            "teragen::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "teragen/group",
:description => "group parameter value",
:type => "string"

attribute "teragen/user",
:description => "user parameter value",
:type => "string"

attribute "teragen/records",
:description => "number of records to be generated",
:type => "string"


