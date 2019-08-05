#!/usr/bin/env bash

PYTHONPATH=/content/drive/My Drive/Severstal/svs python src/create_mmdetection_train.py \
    --annotation=/data/train.csv.zip \
    --root=/data/train \
    --output=/data/train_mmdetection.pkl