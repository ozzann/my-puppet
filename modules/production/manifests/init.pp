class production {
    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
    },

    exec {'./deploy.sh':
        cwd => '/home/vagrant/app',
    }
}
