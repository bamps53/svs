#!/usr/bin/env bash

CONFIG=$1
GPUS=$2
MMDETECTION_PREDICTIONS=/data/test_ensemble_predictions.pkl
SUBMISSION=/data/test_ensemble_submission.csv
SUBMISSION_WA=/data/test_ensemble_submission_wa.csv

python -m torch.distributed.launch --nproc_per_node=$GPUS /svs/mmdetection/tools/test_ensemble.py $CONFIG \
    --checkpoint /dumps/htc_dconv_c3-c5_mstrain_x101_64x4d_fpn_20e/epoch_14.pth \
                 /dumps/htc_dconv_c3-c5_mstrain_x101_64x4d_fpn_20e/epoch_15.pth \
                 /dumps/htc_dconv_c3-c5_mstrain_x101_64x4d_fpn_20e/epoch_17.pth \
    --launcher pytorch ${@:4} \
    --out=${MMDETECTION_PREDICTIONS}

PYTHONPATH=/svs python /src/submit.py \
    --annotation=/data/test_mmdetection.pkl \
    --predictions=${MMDETECTION_PREDICTIONS} \
    --output=${SUBMISSION}

PYTHONPATH=/svs python /src/rm_attribute_classes.py \
    --submission=${SUBMISSION} \
    --output=${SUBMISSION_WA}