class raxmonitoragent::config{

  exec{'rax_monitor_setup':
    command =>"rackspace-monitoring-agent --setup --username ${raxmonitoragent::rax_username} --apikey ${raxmonitoragent::rax_apikey}",
    creates => '/etc/rackspace-monitoring-agent.cfg',
    user    => 'root',
    group   => 'root'
  }

}
