class production {
    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
    }

    exec {'deploy_app':
        command => 'cd /home/vagrant/app; ./deploy.sh',
        cwd  => '/home/vagrant/app',
        path => '/home/vagrant/app',
    }
}
