;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Mul : 
  module Mul : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<2>, flip y : UInt<2>, z : UInt<4>}
    
    wire tbl : UInt<4>[16] @[Mul.scala 24:20]
    tbl[0] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[1] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[2] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[3] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[4] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[5] <= UInt<4>("h01") @[Mul.scala 24:20]
    tbl[6] <= UInt<4>("h02") @[Mul.scala 24:20]
    tbl[7] <= UInt<4>("h03") @[Mul.scala 24:20]
    tbl[8] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[9] <= UInt<4>("h02") @[Mul.scala 24:20]
    tbl[10] <= UInt<4>("h04") @[Mul.scala 24:20]
    tbl[11] <= UInt<4>("h06") @[Mul.scala 24:20]
    tbl[12] <= UInt<4>("h00") @[Mul.scala 24:20]
    tbl[13] <= UInt<4>("h03") @[Mul.scala 24:20]
    tbl[14] <= UInt<4>("h06") @[Mul.scala 24:20]
    tbl[15] <= UInt<4>("h09") @[Mul.scala 24:20]
    node _io_z_T = dshl(io.x, UInt<2>("h02")) @[Mul.scala 25:21]
    node _io_z_T_1 = or(_io_z_T, io.y) @[Mul.scala 25:29]
    node _io_z_T_2 = bits(_io_z_T_1, 3, 0)
    io.z <= tbl[_io_z_T_2] @[Mul.scala 25:8]
    
