;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit DynamicMemorySearch : 
  module DynamicMemorySearch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip isWr : UInt<1>, flip wrAddr : UInt<3>, flip data : UInt<4>, flip en : UInt<1>, target : UInt<3>, done : UInt<1>}
    
    reg index : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[DynamicMemorySearch.scala 30:23]
    cmem list : UInt<4>[8] @[DynamicMemorySearch.scala 32:19]
    infer mport memVal = list[index], clock @[DynamicMemorySearch.scala 33:20]
    node _T = eq(io.en, UInt<1>("h00")) @[DynamicMemorySearch.scala 35:16]
    node _T_1 = eq(memVal, io.data) @[DynamicMemorySearch.scala 35:35]
    node _T_2 = eq(index, UInt<3>("h07")) @[DynamicMemorySearch.scala 35:58]
    node _T_3 = or(_T_1, _T_2) @[DynamicMemorySearch.scala 35:48]
    node done = and(_T, _T_3) @[DynamicMemorySearch.scala 35:23]
    when io.isWr : @[DynamicMemorySearch.scala 37:18]
      infer mport _T_4 = list[io.wrAddr], clock @[DynamicMemorySearch.scala 38:9]
      _T_4 <= io.data @[DynamicMemorySearch.scala 38:21]
      skip @[DynamicMemorySearch.scala 37:18]
    else : @[DynamicMemorySearch.scala 39:23]
      when io.en : @[DynamicMemorySearch.scala 39:23]
        index <= UInt<1>("h00") @[DynamicMemorySearch.scala 40:11]
        skip @[DynamicMemorySearch.scala 39:23]
      else : @[DynamicMemorySearch.scala 41:34]
        node _T_5 = eq(done, UInt<1>("h00")) @[DynamicMemorySearch.scala 41:21]
        when _T_5 : @[DynamicMemorySearch.scala 41:34]
          node _T_6 = add(index, UInt<1>("h01")) @[DynamicMemorySearch.scala 42:20]
          node _T_7 = tail(_T_6, 1) @[DynamicMemorySearch.scala 42:20]
          index <= _T_7 @[DynamicMemorySearch.scala 42:11]
          skip @[DynamicMemorySearch.scala 41:34]
    io.done <= done @[DynamicMemorySearch.scala 44:13]
    io.target <= index @[DynamicMemorySearch.scala 45:13]
    
