;buildInfoPackage: chisel3, version: 3.5-SNAPSHOT, scalaVersion: 2.12.13, sbtVersion: 1.3.10
circuit Test1 : 
  module Test1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip vec_set : UInt<1>, flip vec_idx : UInt<2>, flip vec_ary : UInt<16>[4], vec_ary_out : UInt<16>}
    
    when io.vec_set : @[Test1.scala 33:21]
      io.vec_ary_out <= io.vec_ary[io.vec_idx] @[Test1.scala 35:20]
      skip @[Test1.scala 33:21]
    else : @[Test1.scala 36:16]
      io.vec_ary_out <= UInt<1>("h00") @[Test1.scala 38:20]
      skip @[Test1.scala 36:16]
    
