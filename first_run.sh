#!/bin/bash
docker run -e DISPLAY --privileged -it --net host -v="./workspaces:/workspaces/" --name ros-dev-cont ros-dev-portable
