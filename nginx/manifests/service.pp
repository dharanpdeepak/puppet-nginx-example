# service class
# ensures the nginx service is running

class nginx::service {
  service { 'nginx':
    require => Class["nginx::install"],
    ensure => running,
    enable => true,
    hasrestart => true,
    hasstatus  => true,
  }
}
