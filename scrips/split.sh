#!/usr/bin/env bash

PYTHONPATH=/svs python /svs/src/split.py \
    --annotation=/data/train_mmdetection.pkl \
    --train_output=/data/train_99_mmdetection.pkl \
    --val_output=/data/val_01_mmdetection.pkl
