;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit Functionality : 
  module Functionality : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<16>, flip y : UInt<16>, z : UInt<16>}
    
    node _T = and(io.x, io.y) @[Functionality.scala 13:8]
    node _T_1 = not(io.x) @[Functionality.scala 13:16]
    node _T_2 = and(_T_1, io.y) @[Functionality.scala 13:19]
    node _T_3 = or(_T, _T_2) @[Functionality.scala 13:13]
    io.z <= _T_3 @[Functionality.scala 14:8]
    
