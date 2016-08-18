node default {
}

node 'production.puppet.node' {
    notify { "Node production.puppet.node": }
    include docker
}

