#!/bin/bash

github_projects=("toosyou/ekg"
                    "LIU8606/arrhythmia"
                    "writerwriter/PQRST-Segmentation"
                    "luke1122pr/s1s2_api")

project_names=("ekg" "arrhythmia" "pqrst" "s1s2")

mkdir ./projects

# clone projects
for i in "${!github_projects[@]}"; do
    git clone --recurse-submodules\
        "git@github.com:${github_projects[i]}"\
        "./projects/${project_names[i]}"
done

cp ./models/arr.h5 ./projects/${project_names[1]}/model.h5
cp ./models/pqrst.pkl ./projects/${project_names[2]}/weight.pkl

docker build -t toosyou/cardio_api . --no-cache

rm -rf ./projects
