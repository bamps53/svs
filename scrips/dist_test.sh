#!/usr/bin/env bash

PYTHON=${PYTHON:-"python"}

CONFIG=$1
CHECKPOINT=$2
OUT=$3

$PYTHON mmdetection/tools/test.py $CONFIG $CHECKPOINT --out $OUT
