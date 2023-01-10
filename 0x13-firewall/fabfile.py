#!/usr/bin/python
# run my script on all servers
from fabric.api import *

env.hosts = ['3.238.87.75', '3.234.245.243', '3.239.4.151']
env.user = 'ubuntu'
env.key_filename = '~/.ssh/school'


def deploy_script():
    put("0-block_all_incoming_traffic_but.sh")
    run("./0-block_all_incoming_traffic_but.sh")