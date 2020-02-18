#!/usr/bin/env pwsh
# docker build -t ligaturizer .
param($fontFileName, $outputFontFileName = "Liga$fontFileName")
$outputFontFileName = [System.IO.Path]::GetFileNameWithoutExtension($outputFontFileName)

docker run `
--rm  `
--mount type=bind,src="${pwd}"/input/$fontFileName,dst=/usr/src/app/mountedInputFontFile `
--mount type=bind,src="${pwd}"/output,dst=/usr/src/app/output `
--env OUTPUT_NAME="$outputFontFileName" `
ligaturizer /usr/src/app/forgeOne.sh
