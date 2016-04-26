
yumrepo { 'sonar':
  ensure   => 'present',
  baseurl  => 'http://downloads.sourceforge.net/project/sonar-pkg/rpm',
  descr    => 'Sonar',
  gpgcheck => '0',
}


class { 'java': }
class { 'sonarqube':
  version      => '5.4-1',
  usepackage   => true,
  installroot  => '/opt/sonar/',
  home         => '/opt/sonar',
  package_name => 'sonar',

}
class {'sonarqube::runner':
  usepackage => true,
  version    => '2.4-1',
}

service { 'iptables':
  ensure => 'stopped',
  enable => 'false',
}

