#!/bin/bash

export PYTHONPATH=/home/expdev/SRW/env/work/srw_python:$PYTHONPATH
export SIREPO_AUTH_METHODS=guest
export SIREPO_CELERY_TASKS_CELERYD_CONCURRENCY=8
export SIREPO_FEATURE_CONFIG_SIM_TYPES=srw
export SIREPO_MPI_CORES=21
export SIREPO_SERVER_DB_DIR=/home/expdev/sirepo/run
export SIREPO_SERVER_JOB_QUEUE=Celery
