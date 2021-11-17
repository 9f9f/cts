#!/bin/bash

START_DIR=$(dirname $0)
$START_DIR/ISDESPOT/isdespot-car-sim-master/is-despot/problems/isdespotp_car/car "$@"
