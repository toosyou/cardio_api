#!/bin/bash

project_names=("ekg" "arrhythmia" "pqrst" "s1s2")

for i in "${!project_names[@]}"; do
    PIPENV_PIPFILE=/${project_names[i]}/Pipfile pipenv sync &
done

wait