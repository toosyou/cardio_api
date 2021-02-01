#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/LIU8606/arrhythmia Arr

cd /Arr
wget -O model.h5 https://nas.miplab.org:5001/sharing/E1kf8fQkM

PIPENV_PIPFILE=/PQRST/Pipfile pipenv sync
PIPENV_PIPFILE=/PQRST/Pipfile NVIDIA_VISIBLE_DEVICES="0" \
                                pipenv run python3 /Arr/api.py \
                                 -m model.h5 #port 8899
