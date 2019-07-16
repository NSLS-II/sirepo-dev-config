#!/bin/bash

env_file=$(dirname $0)/env.sh
echo -e "env file: $env_file"
if [ -f "$env_file" ]; then
    echo -e "sourcing env file: $env_file"
    . $env_file
fi

. /opt/conda/etc/profile.d/conda.sh
conda activate sirepo

sirepo service nginx_proxy
