#!/bin/bash

if [ -f "firrtl/utils/bin/firrtl" ]; then
  echo "FIRRTL seems setup"
else
  rm -rf firrtl*
	curl -L -o firrtl.tar.gz https://github.com/chipsalliance/firrtl/archive/v1.4.2.tar.gz
  tar xzf firrtl.tar.gz
  mv firrtl-* firrtl
  cp WritePB.scala firrtl/src/main/scala/firrtl/transforms/
  make -C firrtl build
  pushd .
  cd firrtl
  sbt publishLocal
  popd
  #sbt compile
  #sbt assembly
fi


if [ -f "chisel3/README.md" ]; then
  echo "CHISEL3 seems setup"
else
  rm -rf chisel3*
  curl -L -o chisel3.tar.gz https://github.com/chipsalliance/chisel3/archive/v3.4.2.tar.gz
  tar xzf chisel3.tar.gz
  mv chisel3-* chisel3
  make -C chisel3 compile
  pushd .
  cd chisel3
  sbt publishLocal
  popd
fi
