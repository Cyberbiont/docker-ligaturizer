#!/bin/sh
docker run \
--rm \
--mount type=bind,src="$(pwd)"/input,dst=/usr/src/app/input \
--mount type=bind,src="$(pwd)"/output,dst=/usr/src/app/output \
--env PREFIX=${1:-Liga} \
ligaturizer /usr/src/app/forgeAll.sh
#! 🕮 <YL> 43dcdaff-42a4-47d2-ba67-ea811a9e91b3.md
