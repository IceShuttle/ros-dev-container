#!/bin/bash
echo "Copying Config"
./reset_dir.sh
./setup_config.sh
echo "Building Image"
docker build -t ros-dev-portable .
echo "Creating and Running Container"
./first_run.sh
