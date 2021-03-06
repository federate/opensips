name             'opensips'
maintainer       'Federate.IO'
maintainer_email 'klarrimore@icehook.com'
license          'All rights reserved'
description      'Installs/Configures OpenSIPS'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

recipe "opensips", "Installs opensips package and sets up configuration"
recipe "opensips::source", "Installs opensips from source and sets up configuration"
recipe "opensips::rtpproxy", "Installs and enables rtpproxy"
recipe "opensips::federate", "Installs the federate.io configuration"

%w{ centos redhat amazon scientific oracle fedora }.each do |os|
  supports os
end

%w{ build-essential yum ohai}.each do |cb|
  depends cb
end