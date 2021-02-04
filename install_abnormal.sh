#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# download abnormal detection repo
git -C abnormal pull || git clone --recurse-submodules https://github.com/toosyou/ekg abnormal

PIPENV_PIPFILE=/abnormal/Pipfile pipenv sync
PIPENV_PIPFILE=/abnormal/Pipfile pipenv run wandb login --anonymously
PIPENV_PIPFILE=/abnormal/Pipfile NVIDIA_VISIBLE_DEVICES=1 \
                                    pipenv run python3 /abnormal/web/api/apiv2.py \
                                     -e toosyou/ekg-abnormal_detection/mhr2ocd1 \
                                     -p toosyou/ekg-abnormal_detection/2ojtwj7c \
                                     -w toosyou/ekg-abnormal_detection/x65zqmoy \
                                     -n 5 # port 8787
