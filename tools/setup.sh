#!/bin/bash

if [ -f "firrtl/tools/bin/firrtl" ]; then
  echo "FIRRTL seems setup"
else
  rm -rf firrtl*
	curl -L -o firrtl.tar.gz https://github.com/chipsalliance/firrtl/archive/v1.4.1.tar.gz
  tar xzvf firrtl.tar.gz 
  mv firrtl-* firrtl
  cp WritePB.scala firrtl/src/main/scala/firrtl/transforms/
  cd firrtl
  sbt compile
  sbt assembly
  cd ..
fi


if [ ! -d chisel3 ]; then
  git clone git@github.com:chipsalliance/chisel3.git
fi
