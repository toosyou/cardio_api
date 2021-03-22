#!/bin/bash

cd arrhythmia

PIPENV_PIPFILE=/arrhythmia/Pipfile NVIDIA_VISIBLE_DEVICES=0 \
    pipenv run python3 /arrhythmia/api.py -m /arrhythmia/model.h5 # port 8890