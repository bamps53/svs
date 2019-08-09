#!/usr/bin/env bash
cd svs
mkdir data
cd data/

export KAGGLE_USERNAME='bamps53'
export KAGGLE_KEY='15dd014b445cb250ac6cd72fe86bea21'

kaggle competitions download -c severstal-steel-defect-detection
unzip -q train_images.zip -d train_images 
unzip -q test_images.zip -d test_images 
unzip -q train.csv.zip 