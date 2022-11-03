# build_sv_docker
Helper container to build bitcoin SV 

## Dependencies
This project requires `Docker` and git to be installed

## Download SV into the current working directory

git clone https://github.com/bitcoin-sv/bitcoin-sv.git

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
cd bitcoin/bitcoin-sv
./autogen.sh
./configure --disable-bench --disable-tests
make -j5
```

## Running a regtest bitcoin-sv node
A bitcoin.conf is supplied with a set of default settings to help but it's left as an exercise to the reader to run bitcoind with this configuration. 
