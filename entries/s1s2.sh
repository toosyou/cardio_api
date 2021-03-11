#!/bin/bash

cd s1s2

PIPENV_PIPFILE=/s1s2/Pipfile NVIDIA_VISIBLE_DEVICES=0 \
    pipenv run python3 /s1s2/server.py # port 8990