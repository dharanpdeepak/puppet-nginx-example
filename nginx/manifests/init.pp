# nginx class
# author : dascase candidate
# installs nginx and displays a simple webpage with http->https redirection

class nginx (
  $nginxWebroot	= $nginx::params::nginxWebroot,
  $nginxCertDir	= $nginx::params::nginxCertDir,
  $nginxSiteConf= $nginx::params::nginxSiteConf,
) inherits nginx::params {

      validate_string($nginxWebroot)
      validate_string($nginxCertDir)
      validate_string($nginxSiteConf)

      anchor { 'nginx::begin': } ->
      class  { '::nginx::install': } ->
      class  { '::nginx::config': } ->
      class  { '::nginx::service': } ->
      anchor { 'nginx::end': }
}
