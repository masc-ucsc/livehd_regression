;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Smem : 
  module Smem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip addr : UInt<10>, dataOut : UInt<32>}
    
    smem mem : UInt<32>[1024], undefined @[Smem.scala 15:24]
    node _io_dataOut_T = gt(io.addr, UInt<8>("h0c8")) @[Smem.scala 18:43]
    wire _io_dataOut_WIRE : UInt @[Smem.scala 18:25]
    _io_dataOut_WIRE is invalid @[Smem.scala 18:25]
    when _io_dataOut_T : @[Smem.scala 18:25]
      _io_dataOut_WIRE <= io.addr @[Smem.scala 18:25]
      node _io_dataOut_T_1 = or(_io_dataOut_WIRE, UInt<10>("h00")) @[Smem.scala 18:25]
      node _io_dataOut_T_2 = bits(_io_dataOut_T_1, 9, 0) @[Smem.scala 18:25]
      read mport io_dataOut_MPORT = mem[_io_dataOut_T_2], clock @[Smem.scala 18:25]
      skip @[Smem.scala 18:25]
    io.dataOut <= io_dataOut_MPORT @[Smem.scala 18:14]
    
