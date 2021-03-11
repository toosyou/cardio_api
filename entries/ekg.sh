#!/bin/bash

PIPENV_PIPFILE=/ekg/Pipfile pipenv run wandb login --anonymously
PIPENV_PIPFILE=/ekg/Pipfile NVIDIA_VISIBLE_DEVICES=1 \
                                    pipenv run python3 /ekg/web/api/abnormal.py \
                                     -e toosyou/ekg-abnormal_detection/mhr2ocd1 \
                                     -p toosyou/ekg-abnormal_detection/2ojtwj7c \
                                     -w toosyou/ekg-abnormal_detection/x65zqmoy \
                                     -n 5 # port 8787