maintainer       "Guilhem Lettron"
maintainer_email "guilhem.lettron@youscribe.com"
license          "Apache v2.0"
description      "Install Thinkup"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"
%w{ debian ubuntu centos redhat }.each do |os|
      supports os
end

depends "git"
depends "application"
depends "application_php"
