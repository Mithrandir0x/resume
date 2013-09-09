#!/bin/bash

set -e

if [ ! -f ~/.vagrantonce ]
then
    apt-get update
    apt-get -qq --force-yes install nginx

    /etc/init.d/nginx start
    rm /etc/nginx/sites-enabled/default
    ln -s /vagrant/resume /etc/nginx/sites-available/resume
    ln -s /etc/nginx/sites-available/resume /etc/nginx/sites-enabled/resume
    /etc/init.d/nginx restart
    
    touch ~/.vagrantonce
fi
