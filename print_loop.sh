#!/bin/bash
while [ 1 ]; do
  for l in {a..z} {z..a}; do
    ./print_diamond.rb $l
  done
done