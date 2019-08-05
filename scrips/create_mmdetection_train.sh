#!/usr/bin/env bash

PYTHONPATH=/svs python src/create_mmdetection_train.py \
    --annotation=data/train.csv.zip \
    --root=data/train_images \
    --output=data/train_mmdetection.pkl