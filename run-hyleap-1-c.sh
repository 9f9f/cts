#!/bin/bash

echo "consider: ./run-hyleap-1-c.sh 1245 172.17.0.1"

START_DIR=$(dirname $0)
$START_DIR/ISDESPOT/smart-car-sim-master/is-despot/problems/hybridVisual_car/car "$@"
