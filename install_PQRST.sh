#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/writerwriter/PQRST-Segmentation PQRST

cd /PQRST
wget -O weight.pkl https://github.com/writerwriter/PQRST-Segmentation/releases/download/1.0.0/retinanet_best_pass_all.CAL._22.pkl

pipenv sync
NVIDIA_VISIBLE_DEVICES="0" \
    pipenv run python3 server.py \
        -p weight.pkl #port 8899
