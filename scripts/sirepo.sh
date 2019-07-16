#!/bin/bash

if [ -z "$1" ]; then
    echo -e "The first argument must be one of {rabbitmq,celery,uwsgi,nginx_proxy}. Exiting..."
    exit 1
fi

env_file=$(dirname $0)/env.sh
if [ -f "$env_file" ]; then
    echo -e "sourcing env file: $env_file"
    . $env_file
else
    echo -e "env_file \"$env_file\" does not exist. Exiting..."
    exit 1
fi

. /opt/conda/etc/profile.d/conda.sh
conda activate sirepo

sirepo service $1
