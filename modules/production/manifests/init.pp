class production {
    file {'/home/vagrant/app':
        ensure => absent,
        force  => true,
    }

    file { '/home/vagrant/app':
        ensure => 'directory',
        source => 'puppet:///home/vagrant/app',
        recurse => 'remote',
        path => '/home/vagrant/app',
    }

    file {'/home/vagrant/app/deploy.sh':
        mode    => 0755,
        require => File["/home/vagrant/app"],
    }
    
    exec { 'deploy_app':
       cwd     => "/home/vagrant/app",
       logoutput => 'true',
       command => "/bin/bash -c './deploy.sh'",
       require => File["/home/vagrant/app/deploy.sh"],
       timeout => 1000,
    }
}
