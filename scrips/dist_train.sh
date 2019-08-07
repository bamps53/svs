
#!/usr/bin/env bash

PYTHON=${PYTHON:-"python"}

CONFIG=$1

$PYTHON mmdetection/tools/train.py $CONFIG --validate --gpus 1