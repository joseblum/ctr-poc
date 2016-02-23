# Class: jbrepo
#
# This module manages jbrepo
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class jbrepo (
  $repo         = $jbrepo::params::repo,
  $fullname     = $jbrepo::params::fullname,
  $baseurl      = $jbrepo::params::baseurl,
  $enabled      = $jbrepo::params::enabled,
  $gpgcheck     = $jbrepo::params::gpgcheck,
  $excludes     = $jbrepo::params::excludes,
 
 ) inherits jbrepo::params {

   validate_string($repo)
   validate_string($fullname)
   validate_string($baseurl)

   anchor { 'jbrepo::begin': } ->
   class  { '::jbrepo::config': } ->
   anchor { 'jbrepo::end': }

}
