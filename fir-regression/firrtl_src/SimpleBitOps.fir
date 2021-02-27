;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit SimpleBitOps : 
  module SimpleBitOps : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inp1 : UInt<4>, flip inp2 : UInt<4>, out_and : UInt<4>, out_andr : UInt<1>, out_xor : UInt<4>, out_xorr : UInt<1>, out_or : UInt<4>, out_orr : UInt<1>, out_not : UInt<4>}
    
    node _io_out_and_T = and(io.inp1, io.inp2) @[SimpleBitOps.scala 32:25]
    io.out_and <= _io_out_and_T @[SimpleBitOps.scala 32:14]
    node _io_out_xor_T = xor(io.inp1, io.inp2) @[SimpleBitOps.scala 33:25]
    io.out_xor <= _io_out_xor_T @[SimpleBitOps.scala 33:14]
    node _io_out_or_T = or(io.inp1, io.inp2) @[SimpleBitOps.scala 34:25]
    io.out_or <= _io_out_or_T @[SimpleBitOps.scala 34:14]
    node _io_out_andr_T = andr(io.inp1) @[SimpleBitOps.scala 36:26]
    io.out_andr <= _io_out_andr_T @[SimpleBitOps.scala 36:15]
    node _io_out_xorr_T = xorr(io.inp1) @[SimpleBitOps.scala 37:26]
    io.out_xorr <= _io_out_xorr_T @[SimpleBitOps.scala 37:15]
    node _io_out_orr_T = orr(io.inp1) @[SimpleBitOps.scala 38:26]
    io.out_orr <= _io_out_orr_T @[SimpleBitOps.scala 38:15]
    node _io_out_not_T = not(io.inp1) @[SimpleBitOps.scala 40:17]
    io.out_not <= _io_out_not_T @[SimpleBitOps.scala 40:14]
    
