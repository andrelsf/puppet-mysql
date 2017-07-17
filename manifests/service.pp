class mysql::service inherits mysql {
  service { 'rh-mysql56-mysqld':
    ensure => running,
    enable => true,
    require => Package['rh-mysql56-mysql-server'],
  }
}
