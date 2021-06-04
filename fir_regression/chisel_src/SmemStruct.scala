package SmemStruct

import chisel3._

class StructData extends Bundle {
  val x_data = UInt(8.W)
  val y_data = UInt(8.W)
}

class SmemStruct extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val enable  = Input(Bool())
    val write   = Input(Bool())
    val addr    = Input(UInt(10.W))
    // val mask    = Input(Vec(4, Bool()))
    // val dataIn  = Input(Vec(4, new StructData))
    // val dataOut = Output(Vec(4, new StructData))
    val dataIn  = Input(new StructData)
    val dataOut = Output(new StructData)
  })

  val my_mem = SyncReadMem(1024, new StructData)
  // val my_mem = SyncReadMem(1024, Vec(4, new StructData))
  // Create one write port and one read port
  // io.dataOut := my_mem.read(io.addr, io.enable)

  my_mem.write(io.addr, io.dataIn)
  val rd_enable = Wire(new Bool())
  when (io.addr > 32.U) {
    rd_enable := io.enable
  } .otherwise {
    rd_enable := true.B
  }
  io.dataOut := my_mem.read(io.addr, rd_enable)
}
