#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/writerwriter/PQRST-Segmentation PQRST

cd /PQRST
wget -O weight.pkl https://github-releases.githubusercontent.com/253396963/e4ceea80-64c6-11eb-98f5-eedd72d4bf69?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210201T115220Z&X-Amz-Expires=300&X-Amz-Signature=5ddd2c7f5fa7fa000e492958f85c7fa6e124945a4738a3b6d38b0322bb4a834b&X-Amz-SignedHeaders=host&actor_id=16189828&key_id=0&repo_id=253396963&response-content-disposition=attachment%3B%20filename%3Dretinanet_best_pass_all.CAL._22.pkl&response-content-type=application%2Foctet-stream

pipenv sync
NVIDIA_VISIBLE_DEVICES="0" \
    pipenv run python3 server.py \
        -p weight.pkl #port 8899
