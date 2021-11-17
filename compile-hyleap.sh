#!/bin/bash

START_DIR=$(dirname $0)
cd $START_DIR/ISDESPOT/smart-car-sim-master/is-despot && make
cd -
cd $START_DIR/ISDESPOT/smart-car-sim-master/is-despot/problems/hybridVisual_car && make
