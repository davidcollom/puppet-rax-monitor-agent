class raxmonitoragent::service{

  service{'rackspace-monitoring-agent':
    ensure        => running,
    enable        => true
  }

}
