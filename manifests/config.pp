class mysql::config inherits mysql {
  $node = 'node.puppetlab.com'
  file { 'My CNF':
    ensure  => file,
    path    => '/etc/my.cnf',
    content => template('mysql/my.cnf.erb'),
  }
}
