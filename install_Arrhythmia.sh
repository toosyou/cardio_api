#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download PQRST segmentation repo
git clone --recurse-submodules https://github.com/LIU8606/arrhythmia Arr

cd /Arr
wget -O model.h5 https://github-releases.githubusercontent.com/313233429/f238a480-64c7-11eb-9c63-4aab7d852f94?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210201T120024Z&X-Amz-Expires=300&X-Amz-Signature=7248b06bf48a9f83522c5b2652731278be91e0b798d7ca5af8007e84bbc3c2fd&X-Amz-SignedHeaders=host&actor_id=62653810&key_id=0&repo_id=313233429&response-content-disposition=attachment%3B%20filename%3Dmodel.h5&response-content-type=application%2Foctet-stream
PIPENV_PIPFILE=/PQRST/Pipfile pipenv sync
PIPENV_PIPFILE=/PQRST/Pipfile NVIDIA_VISIBLE_DEVICES="0" \
                                pipenv run python3 /Arr/api.py \
                                 -m model.h5 #port 8890
