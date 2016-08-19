class production {
    vcsrepo{'/home/vagrant/app':
       ensure   => present,
       provider => git,
       source   => 'http://github.com/ozzann/basic-ping-server',
    }

    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
        require => Vcsrepo["/homevagrant/app"],
    }

    exec {'./deploy.sh':
        cwd    => '/home/vagrant/app',
        path   => '/var/run/docker:/var/lib/docker:/usr/bin',
        timeout => 700,
        require => File["/home/vagrant/app/deploy.sh"],
    }
}
