#!/bin/bash

START_DIR=$(dirname $0)
cd $START_DIR/ISDESPOT/isdespot-car-sim-master/is-despot && make
cd -
cd $START_DIR/ISDESPOT/isdespot-car-sim-master/is-despot/problems/isdespotp_car && make
