#!/bin/sh
docker run \
--rm \
--mount type=bind,src="$(pwd)"/input/$1,dst=/usr/src/app/mountedInputFontFile \
--mount type=bind,src="$(pwd)"/output,dst=/usr/src/app/output \
--env OUTPUT_NAME=${2:-Liga$1} \
ligaturizer /usr/src/app/forgeOne.sh
