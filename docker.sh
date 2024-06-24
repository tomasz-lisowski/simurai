#!/bin/bash
set -o nounset;  # Abort on unbound variable.
set -o pipefail; # Don't hide errors within pipes.
set -o errexit;  # Abort on non-zero exit status.

pushd .;
cd ./swsim;
./docker.sh;
popd;

pushd .;
cd ./swicc;
./docker.sh;
popd;

pushd .;
cd ./swicc-pcsc;
./docker.sh;
popd;
