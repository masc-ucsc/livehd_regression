;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit Stack : 
  module Stack : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip push : UInt<1>, flip pop : UInt<1>, flip en : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    cmem stack_mem : UInt<32>[8] @[Stack.scala 16:22]
    reg sp : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[Stack.scala 17:26]
    reg out : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Stack.scala 18:26]
    when io.en : @[Stack.scala 20:16]
      node _T = lt(sp, UInt<4>("h08")) @[Stack.scala 21:25]
      node _T_1 = and(io.push, _T) @[Stack.scala 21:18]
      when _T_1 : @[Stack.scala 21:42]
        node _T_2 = bits(sp, 2, 0) @[Stack.scala 22:16]
        infer mport _T_3 = stack_mem[_T_2], clock @[Stack.scala 22:16]
        _T_3 <= io.dataIn @[Stack.scala 22:21]
        node _T_4 = add(sp, UInt<1>("h01")) @[Stack.scala 23:16]
        node _T_5 = tail(_T_4, 1) @[Stack.scala 23:16]
        sp <= _T_5 @[Stack.scala 23:10]
        skip @[Stack.scala 21:42]
      else : @[Stack.scala 24:39]
        node _T_6 = gt(sp, UInt<1>("h00")) @[Stack.scala 24:31]
        node _T_7 = and(io.pop, _T_6) @[Stack.scala 24:24]
        when _T_7 : @[Stack.scala 24:39]
          node _T_8 = sub(sp, UInt<1>("h01")) @[Stack.scala 25:16]
          node _T_9 = tail(_T_8, 1) @[Stack.scala 25:16]
          sp <= _T_9 @[Stack.scala 25:10]
          skip @[Stack.scala 24:39]
      node _T_10 = gt(sp, UInt<1>("h00")) @[Stack.scala 27:14]
      when _T_10 : @[Stack.scala 27:21]
        node _T_11 = sub(sp, UInt<1>("h01")) @[Stack.scala 28:27]
        node _T_12 = tail(_T_11, 1) @[Stack.scala 28:27]
        node _T_13 = bits(_T_12, 2, 0) @[Stack.scala 28:23]
        infer mport _T_14 = stack_mem[_T_13], clock @[Stack.scala 28:23]
        out <= _T_14 @[Stack.scala 28:11]
        skip @[Stack.scala 27:21]
      skip @[Stack.scala 20:16]
    io.dataOut <= out @[Stack.scala 32:14]
    
