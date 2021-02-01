#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/writerwriter/PQRST-Segmentation PQRST

wget -O /PQRST/weight.pkl https://nas.miplab.org:5001/sharing/EaMNy6NC2

PIPENV_PIPFILE=/PQRST/Pipfile pipenv sync
PIPENV_PIPFILE=/PQRST/Pipfile NVIDIA_VISIBLE_DEVICES="0" \
                                pipenv run python3 /PQRST/server.py \
                                 -p /PQRST/weight.pkl #port 8899
