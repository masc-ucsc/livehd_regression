;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit RWSmem : 
  module RWSmem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip enable : UInt<1>, flip write : UInt<1>, flip addr : UInt<10>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    smem mem : UInt<32>[1024], undefined @[RWSmem.scala 15:24]
    io.dataOut is invalid @[RWSmem.scala 16:14]
    when io.enable : @[RWSmem.scala 17:19]
      infer mport rdwrPort = mem[io.addr], clock @[RWSmem.scala 18:23]
      when io.write : @[RWSmem.scala 19:21]
        rdwrPort <= io.dataIn @[RWSmem.scala 19:32]
        skip @[RWSmem.scala 19:21]
      else : @[RWSmem.scala 20:21]
        io.dataOut <= rdwrPort @[RWSmem.scala 20:34]
        skip @[RWSmem.scala 20:21]
      skip @[RWSmem.scala 17:19]
    
