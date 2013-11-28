class raxmonitoragent::install{

  case $::operatingsystem {
    'Ubuntu': {
      file{'monitoring_repo':
        path    => '/etc/apt/sources.list.d/rackspace-monitoring-agent.list',
        content => "deb ${::raxmonitoragent::repo_url} cloudmonitoring main"
      }->
      exec{'monitor_aptget_key':
        command=>'curl https://monitoring.api.rackspacecloud.com/pki/agent/linux.asc | sudo apt-key add -'
      }~>
      exec{'monitor_aptget_update':
        command=>'apt-get update'
      }->Package['rackspace-monitoring-agent']
    }

  }

  package{'rackspace-monitoring-agent':
    ensure=>'installed'
  }


}
