#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/LIU8606/arrhythmia Arr

cd /Arr
wget -O model.h5 https://github.com/LIU8606/arrhythmia/releases/download/1.0.0/model.h5

pipenv sync
NVIDIA_VISIBLE_DEVICES="1" \
    pipenv run python3 /Arr/api.py -m model.h5 # port 8890