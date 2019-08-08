#!/bin/bash

export PYTHONPATH=/home/vagrant/src/SRW/env/work/srw_python:$PYTHONPATH
export SIREPO_AUTH_BLUESKY_SECRET=bluesky
export SIREPO_AUTH_METHODS=bluesky:guest
export SIREPO_CELERY_TASKS_CELERYD_CONCURRENCY=8
export SIREPO_FEATURE_CONFIG_SIM_TYPES=srw
export SIREPO_MPI_CORES=8
export SIREPO_SERVER_DB_DIR=/home/vagrant/src/sirepo/run
export SIREPO_SERVER_JOB_QUEUE=Celery
