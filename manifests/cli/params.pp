# == Class: php::cli::params
#
# Defaults file for CLI package
#
# === Parameters
#
# No parameters
#
# === Variables
#
# [*ensure*]
#   The version of the package to install
#   Could be "latest", "installed" or a pinned version
#   This matches "ensure" from Package
#
# [*package*]
#   The package name for apache package
#
# [*provider*]
#   The provider used to install package
#
# [*inifile*]
#   The path to the ini php5 apache ini file
#
# [*settings*]
#   Hash with 'set' nested hash of key => value
#   set changes to agues when applied to *inifile*
#
# === Examples
#
# No examples
#
# === Authors
#
# Christian "Jippi" Winther <jippignu@gmail.com>
#
# === Copyright
#
# Copyright 2012-2013 Christian "Jippi" Winther, unless otherwise noted.
#
class php::cli::params {


  case $::osfamily {
    'RedHat': {
       $package            = 'php-cli'
       $inifile  = '/etc/php.ini'
    }
    'Debian': {
       $package            = 'php5-cli' 
       $inifile  = '/etc/php5/cli/php.ini' 
    }
    default: {
        fail("Unsupported OS family")
    }  
  }

  $ensure   = $php::params::ensure
  $provider = undef
  $settings = [ ]

}
