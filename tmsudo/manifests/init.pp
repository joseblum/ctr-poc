# Class: tmsudo
#
# This module manages tmsudo - the custom include for
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class tmsudo (
       $perms = { 
                 "%ctradmins" => "ALL=(ALL) ALL", 
                 "svctib"     => "ALL=(ALL) ALL"
                }
    
) inherits tmsudo::params {
  
   validate_hash($perms)
  
   anchor { 'tmsudo::begin': } ->
   class  { '::tmsudo::config': } ->
   anchor { 'tmsudo::end': }

  }
