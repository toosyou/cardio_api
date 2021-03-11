#!/bin/bash

# setup environment variables
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

./entries/ekg.sh &
./entries/arrhythmia.sh &
./entries/pqrst.sh &
./entries/s1s2.sh &
sleep infinity