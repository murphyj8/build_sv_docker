#!/bin/bash

docker run -it \
        --mount type=bind,source="$(pwd)",destination=/SDK --rm sv-build-tools
