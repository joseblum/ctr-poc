class tmsudo::params {
# These defaults can/should be overridden in hiera 
   
   $perms           = { 
                       "%ctradmins" => "ALL=(ALL) ALL", 
                       "svctib"     => "ALL=(ALL) ALL"
                      }
  

   $config          = '/etc/sudoers.d/03_jbcustadm'
   $config_template = 'tmsudo/03_jbcustadm.erb'

}

