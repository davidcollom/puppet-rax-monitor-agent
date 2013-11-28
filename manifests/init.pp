# Class: raxmonitoragent
#
# This module manages raxmonitoragent
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class raxmonitoragent(
  $rax_username,
  $rax_apikey
) inherits raxmonitoragent::params {

  Exec{ path=>'/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games'}

  include install
  include config
  include service

  Class['install']~>
  Class['config']->
  Class['service']
}
