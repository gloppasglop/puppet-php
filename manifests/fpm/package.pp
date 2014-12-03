# == Class: php::fpm::package
#
# This "private" class manages the fpm service
#
class php::fpm::package(
  $package_name,
  $package_ensure,
  $package_provider
) {

  package { 'php5-fpm':
    name     => $package_name,
    ensure   => $package_ensure,
    provider => $package_provider
  }
}
