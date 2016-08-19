class production {
    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
    }

    exec {'docker -d -p 9000:9000 app':
        onlyif => 'docker build -t app .',
        cwd    => '/home/vagrant/app',
        path   => '/var/run/docker:/var/lib/docker:/usr/bin',
    }
}
