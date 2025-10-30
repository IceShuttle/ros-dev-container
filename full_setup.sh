#!/bin/bash
./reset_dir.sh
./setup_config.sh
docker build -t ros-dev .
./first_run.sh
