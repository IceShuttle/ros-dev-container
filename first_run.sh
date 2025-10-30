#!/bin/bash
docker run -e DISPLAY --privileged -it --net host -v="./workspace:/workspace/" --name ros-dev-cont ros-dev
