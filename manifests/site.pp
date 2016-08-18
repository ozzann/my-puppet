node default {
}

node 'production.puppet.node' {
    notify { "This is node production.puppet.node": }
    include docker
}

