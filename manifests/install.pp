class mysql::install inherits mysql {
  package { 'centos-release-scl-rh':
    ensure  => installed,
  }

  package { 'rh-mysql56-mysql-server':
    ensure => installed,
    require => Package['centos-release-scl-rh'],
  }
}
