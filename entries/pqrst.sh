#!/bin/bash

cd pqrst

PIPENV_PIPFILE=/pqrst/Pipfile NVIDIA_VISIBLE_DEVICES=0 \
    pipenv run python3 /pqrst/server.py \
        -p /pqrst/weight.pkl #port 8899
