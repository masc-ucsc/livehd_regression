;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Test3 : 
  module Test3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inp : UInt<12>, out_pad : UInt<16>}
    
    node _io_out_pad_T = pad(io.inp, 16) @[Test3.scala 18:27]
    io.out_pad <= _io_out_pad_T @[Test3.scala 18:14]
    
