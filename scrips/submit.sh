#!/usr/bin/env bash

MMDETECTION_PREDICTIONS=data/output.pkl
SUBMISSION=data/submission.csv

PYTHONPATH=/svs python /src/submit.py \
    --annotation=/data/test_mmdetection.pkl \
    --predictions=${MMDETECTION_PREDICTIONS} \
    --output=${SUBMISSION}
