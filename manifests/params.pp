class raxmonitoragent::params{

  $repo_url = $::operatingsystem ? {
    default   => undef,
    'Ubuntu'  => "http://stable.packages.cloudmonitoring.rackspace.com/ubuntu-${::lsbdistrelease}-${::hardwaremodel}",
    'Debian'  => "http://stable.packages.cloudmonitoring.rackspace.com/debian-${::lsbdistrelease}-${::hardwaremodel}",
    'RedHat'  => "http://stable.packages.cloudmonitoring.rackspace.com/redhat-${::lsbmajdistrelease}-x86_64",
    'Fedora'  => "http://stable.packages.cloudmonitoring.rackspace.com/fedora-${::lsbmajdistrelease}-x86_64",
  }

}
