;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit VecSearch : 
  module VecSearch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>}
    
    reg index : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[VecSearch.scala 14:22]
    wire elts : UInt<4>[7] @[VecSearch.scala 15:22]
    elts[0] <= UInt<4>("h00") @[VecSearch.scala 15:22]
    elts[1] <= UInt<4>("h04") @[VecSearch.scala 15:22]
    elts[2] <= UInt<4>("h0f") @[VecSearch.scala 15:22]
    elts[3] <= UInt<4>("h0e") @[VecSearch.scala 15:22]
    elts[4] <= UInt<4>("h02") @[VecSearch.scala 15:22]
    elts[5] <= UInt<4>("h05") @[VecSearch.scala 15:22]
    elts[6] <= UInt<4>("h0d") @[VecSearch.scala 15:22]
    node _T = add(index, UInt<1>("h01")) @[VecSearch.scala 16:18]
    node _T_1 = tail(_T, 1) @[VecSearch.scala 16:18]
    index <= _T_1 @[VecSearch.scala 16:9]
    io.out <= elts[index] @[VecSearch.scala 17:10]
    
