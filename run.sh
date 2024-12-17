#!/bin/bash

rm -r results/logs
mkdir results/logs
mkdir results/logs/evolution
mkdir results/logs/solutions
mkdir results/logs/objectives

config_params='--schema 2P-R-GRASP --version rnd-grd --m 4 --block 38 --delta 1 --exploration first'
fixed_params='--termination_criteria iter --termination_value 1000 --logs 1 --move ext --efficient 1'

./MCGP --instance 'instances/tsplib/a280_05_2.txt' --seed 1 $fixed_params $config_params
