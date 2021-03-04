;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Test6 : 
  module Test6 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<16>[3], flip addr : UInt<5>, out : UInt<16>}
    
    node _io_out_T = bits(io.addr, 1, 0)
    io.out <= io.in[_io_out_T] @[Test6.scala 17:10]
    
