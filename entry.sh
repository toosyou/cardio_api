#!/bin/bash

git -C cardio_api pull || git clone https://github.com/toosyou/cardio_api
/cardio_api/install.sh