# installation of packages are handled here

# Nginx installation
class nginx::install {

  # install Nginx package
  package { 'nginx':
    ensure => installed,
    #notify => nginx::config
  }

}
