# nginx class
# author : dascase candidate
# installs nginx and displays a simple webpage with http->https redirection

class nginx {
  anchor { 'nginx::begin': } ->
  class  { '::nginx::install': } ->
  class  { '::nginx::config': } ->
  class  { '::nginx::service': } ->
  anchor { 'nginx::end': }
}
