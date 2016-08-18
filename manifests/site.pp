node default {
}

node 'vagrant.ads.zuehlke.com' {
    notify { "This is node production.puppet.node": }
    include docker
    include production
}

