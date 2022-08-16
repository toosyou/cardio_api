#!/bin/bash

project_names=("ekg" "arrhythmia" "pqrst" "s1s2")

cp ./models/arr.h5 ./projects/${project_names[1]}/model.h5
cp ./models/pqrst.pkl ./projects/${project_names[2]}/weight.pkl

docker build -t toosyou/cardio_api . --no-cache
