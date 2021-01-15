#!/bin/bash

mkdir -p generated
cd generated
for a in ../scripts/*.py
do
  python $a
done

