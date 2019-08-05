#!/usr/bin/env bash

PYTHONPATH=/svs python /src/create_mmdetection_test.py \
    --annotation=/data/sample_submission.csv \
    --root=/data/test \
    --output=/data/test_mmdetection.pkl
