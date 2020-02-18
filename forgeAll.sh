#!/bin/sh

printf $MODE
fontforge -lang=py build.py /input/ --prefix="$PREFIX" 2>&1 \
| fgrep -v 'This contextual rule applies no lookups.' \
| fgrep -v 'Bad device table'

# 🕮 <YL> 08989681-3d2f-4a5f-840f-39dd2c5ae0b6.md
