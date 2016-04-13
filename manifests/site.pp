

class { 'java': }
class { 'sonarqube':
  version    => '5.1',
  usepackage => true,
}
class {'sonarqube::runner':
  usepackage => true,
  version    => '2.4-1',
}
