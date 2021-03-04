;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Trivial : 
  module Trivial : 
    input clock : Clock
    input reset : UInt<1>
    output io : {outp : UInt<4>}
    
    io.outp <= UInt<3>("h05") @[Trivial.scala 22:11]
    
