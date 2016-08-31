class production {
    exec {'rm -rf /home/vagrant/app/*':
        path => '/usr/bin:/usr/sbin:/bin',
    }

    file { '/home/vagrant/app':
        ensure => 'directory',
        source => 'puppet:///extra_files/app',
        recurse => 'remote',
        path => '/home/vagrant/app',
        owner => 'vagrant',
    }

    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
        ensure => 'present',
    }
    
    exec { 'deploy_app':
       cwd     => "/home/vagrant/app",
       logoutput => 'true',
       command => "/bin/bash -c './deploy.sh'",
       require => File["/home/vagrant/app/deploy.sh"],
       timeout => 1000,
    }
}
