#!/usr/bin/env bash

PYTHONPATH=/svs python src/split.py \
    --annotation=/kaggle/input/severstal-steel-defect-detection/train_mmdetection.pkl \
    --train_output=data/train_9_mmdetection.pkl \
    --val_output=data/val_1_mmdetection.pkl \
    --n_splits=10
