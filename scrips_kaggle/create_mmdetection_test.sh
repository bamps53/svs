#!/usr/bin/env bash

PYTHONPATH=/svs python src/create_mmdetection_test.py \
    --annotation=/kaggle/input/severstal-steel-defect-detection/sample_submission.csv \
    --root=/kaggle/input/severstal-steel-defect-detection/test_images \
    --output=data/test_mmdetection.pkl
