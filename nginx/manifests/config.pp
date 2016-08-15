# confg class
# defines and applies configurations related to nginx

class nginx::config {

  # remove nginx default conf from sites-enabled
  file { "/etc/nginx/sites-enabled/default":
    #require => Class["nginx::install"],
    ensure  => absent,
    #notify  => Class["nginx::service"]
  }

  # add custom nginx configuration
  file {"${nginx::nginxSiteConf}":
	ensure => present,
	source => 'puppet:///modules/nginx/config/site.conf',
	#require      => File['/etc/nginx/nginx.conf'],
	#notify  => Class["nginx::service"]
  }

  # create static content directory
  file {"${nginx::nginxWebroot}":
	ensure => directory,
	source => 'puppet:///modules/nginx/webroot/static',
	recurse => true,
  }

  # create certs directory
  file {"${nginx::nginxCertDir}":
	ensure => directory,
	source       => 'puppet:///modules/nginx/config/certs',
	recurse => true,
	notify => Class["nginx::service"],
  }
}
