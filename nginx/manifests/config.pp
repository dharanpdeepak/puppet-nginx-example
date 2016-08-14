# confg class
# defines and applies configurations related to nginx

class nginx::config {

  #remove nginx default conf from sites-enabled
  file { "/etc/nginx/sites-enabled/default":
    ensure  => absent,
    notify  => nginx::service
  }

}
