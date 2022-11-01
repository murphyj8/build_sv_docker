#!/bin/bash

docker run -it \
        --mount type=bind,source="$(pwd)",destination=/bitcoin --rm sv-build-tools
