;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit Parity : 
  module Parity : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<1>, out : UInt<1>}
    
    reg state : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Parity.scala 13:23]
    when io.in : @[Parity.scala 14:16]
      node _T = eq(state, UInt<1>("h00")) @[Parity.scala 15:17]
      when _T : @[Parity.scala 15:29]
        state <= UInt<1>("h01") @[Parity.scala 15:37]
        skip @[Parity.scala 15:29]
      else : @[Parity.scala 16:29]
        state <= UInt<1>("h00") @[Parity.scala 16:37]
        skip @[Parity.scala 16:29]
      skip @[Parity.scala 14:16]
    node _T_1 = eq(state, UInt<1>("h01")) @[Parity.scala 18:20]
    io.out <= _T_1 @[Parity.scala 18:10]
    
