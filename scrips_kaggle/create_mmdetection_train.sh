#!/usr/bin/env bash

PYTHONPATH=/svs python src/create_mmdetection_train.py \
    --annotation=/kaggle/input/severstal-steel-defect-detection/train.csv \
    --root=/kaggle/input/severstal-steel-defect-detection/train_images \
    --output=data/train_mmdetection.pkl