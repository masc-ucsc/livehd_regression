;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Flop : 
  module Flop : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inp : UInt<16>, flip loading : UInt<1>, out : UInt<16>}
    
    reg x : UInt<16>, clock @[Flop.scala 14:15]
    when io.loading : @[Flop.scala 16:20]
      x <= io.inp @[Flop.scala 17:7]
      skip @[Flop.scala 16:20]
    io.out <= x @[Flop.scala 20:10]
    
