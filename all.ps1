#!/usr/bin/env pwsh

# docker build -t ligaturizer .

docker run `
--rm `
--mount type=bind,src="${pwd}"/input/,dst=/usr/src/app/input `
--mount type=bind,src="${pwd}"/output,dst=/usr/src/app/output `
--env PREFIX=Liga `
ligaturizer /usr/src/app/forgeAll.sh
