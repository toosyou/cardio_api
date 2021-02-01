#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/luke1122pr/s1s2_api.git S1S2

cd /S1S2

pipenv sync
NVIDIA_VISIBLE_DEVICES="0" \
    pipenv run python3 /S1S2/server.py # port 8990