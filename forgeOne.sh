#!/bin/sh
# 🕮 <YL> ad0bd67b-2d6e-4b1c-b023-b3694c13e522.md

fontforge -lang=py ligaturize.py /usr/src/app/mountedInputFontFile --output-dir=./output/ --prefix="$PREFIX" --output-name="$OUTPUT_NAME" 2>&1 \
| fgrep -v 'This contextual rule applies no lookups.' \
| fgrep -v 'Bad device table'
