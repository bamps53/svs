#!/usr/bin/env bash

PYTHONPATH=/svs python src/create_mmdetection_train.py \
    --annotation=../input/severstal-steel-defect-detection/train.csv \
    --root=../input/severstal-steel-defect-detection/train_images \
    --output=data/train_mmdetection.pkl