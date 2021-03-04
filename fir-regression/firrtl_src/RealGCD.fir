;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit RealGCD : 
  module RealGCD : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : {flip ready : UInt<1>, valid : UInt<1>, bits : {a : UInt<16>, b : UInt<16>}}, out : {valid : UInt<1>, bits : UInt<16>}}
    
    reg x : UInt, clock @[RealGCD.scala 22:14]
    reg y : UInt, clock @[RealGCD.scala 23:14]
    reg p : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[RealGCD.scala 24:18]
    node _T = eq(p, UInt<1>("h00")) @[RealGCD.scala 26:18]
    io.in.ready <= _T @[RealGCD.scala 26:15]
    node _T_1 = eq(p, UInt<1>("h00")) @[RealGCD.scala 28:24]
    node _T_2 = and(io.in.valid, _T_1) @[RealGCD.scala 28:21]
    when _T_2 : @[RealGCD.scala 28:28]
      x <= io.in.bits.a @[RealGCD.scala 29:7]
      y <= io.in.bits.b @[RealGCD.scala 30:7]
      p <= UInt<1>("h01") @[RealGCD.scala 31:7]
      skip @[RealGCD.scala 28:28]
    when p : @[RealGCD.scala 34:12]
      node _T_3 = gt(x, y) @[RealGCD.scala 35:13]
      when _T_3 : @[RealGCD.scala 35:19]
        x <= y @[RealGCD.scala 35:23]
        y <= x @[RealGCD.scala 35:31]
        skip @[RealGCD.scala 35:19]
      else : @[RealGCD.scala 36:19]
        node _T_4 = sub(y, x) @[RealGCD.scala 36:28]
        node _T_5 = tail(_T_4, 1) @[RealGCD.scala 36:28]
        y <= _T_5 @[RealGCD.scala 36:23]
        skip @[RealGCD.scala 36:19]
      skip @[RealGCD.scala 34:12]
    io.out.bits <= x @[RealGCD.scala 39:16]
    node _T_6 = eq(y, UInt<1>("h00")) @[RealGCD.scala 40:21]
    node _T_7 = and(_T_6, p) @[RealGCD.scala 40:29]
    io.out.valid <= _T_7 @[RealGCD.scala 40:16]
    when io.out.valid : @[RealGCD.scala 41:23]
      p <= UInt<1>("h00") @[RealGCD.scala 42:7]
      skip @[RealGCD.scala 41:23]
    
