;buildInfoPackage: chisel3, version: 3.4-SNAPSHOT, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Test5 : 
  module Test5 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inp1 : Fixed<32><<16>>, flip inp2 : Fixed<32><<16>>, out : Fixed<32><<20>>, out20 : UInt<4>, out21 : SInt<4>, out22 : SInt<4>, out23 : SInt<8>, out3 : UInt<4>, out4 : UInt<16>}
    
    node _io_out_T = mul(io.inp1, io.inp2) @[Test5.scala 28:21]
    io.out <= _io_out_T @[Test5.scala 28:10]
    io.out20 <= UInt<3>("h05") @[Test5.scala 30:12]
    io.out21 <= asSInt(UInt<4>("h05")) @[Test5.scala 31:12]
    io.out22 <= asSInt(UInt<4>("h0b")) @[Test5.scala 32:12]
    io.out23 <= asSInt(UInt<6>("h020")) @[Test5.scala 33:12]
    io.out3 <= UInt<4>("h0a") @[Test5.scala 35:11]
    io.out4 <= UInt<25>("h0123abcd") @[Test5.scala 36:11]
    
