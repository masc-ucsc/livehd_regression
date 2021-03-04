;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Register : 
  module Register : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inVal : UInt<16>, flip loadingValues : UInt<1>, outVal : UInt<16>}
    
    reg x : UInt, clock @[Register.scala 19:15]
    when io.loadingValues : @[Register.scala 21:27]
      x <= io.inVal @[Register.scala 22:7]
      skip @[Register.scala 21:27]
    else : @[Register.scala 23:16]
      node _T = gt(x, UInt<1>("h00")) @[Register.scala 24:13]
      when _T : @[Register.scala 24:20]
        node _x_T = sub(x, UInt<1>("h01")) @[Register.scala 25:14]
        node _x_T_1 = tail(_x_T, 1) @[Register.scala 25:14]
        x <= _x_T_1 @[Register.scala 25:9]
        skip @[Register.scala 24:20]
      skip @[Register.scala 23:16]
    io.outVal <= x @[Register.scala 29:13]
    
