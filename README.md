# build_sv_docker
Helper container to build bitcoin SV 

## Getting the SV code base
If you working with nchain, please clone it from the our repos into the current directory

## Dependencies
This project requires `Docker` and git to be installed

## Download SV code into current directory
The following downloads the code and changes to the develop branch
```bash
git clone ssh://git@bitbucket.stressedsharks.com:8443/sv/sv.git
git checkout develop
```

## Docker images
Please build and start the docker image as shown below:
```bash
./build.sh
./run.sh
```

This will start a container running Ubuntu with the required tools to build bitcoinsv

## To build SV
Please execute the commands below. 
```bash
cd bitcoin/sv
./autogen.sh
./configure --disable-bench --disable-tests
make -j5
```

## Running a regtest bitcoin-sv node
A bitcoin.conf is supplied with a set of default settings to help but it's left as an exercise to the reader to finish


