// See LICENSE.txt for license details.
package design

import chisel3._

// Example:
//
// This is example of multiplexer 2-to-1 with 'sel' as control signal
// Multiplexed inputs are 'in0' and 'in1'
//
class Mux2 extends Module {
  val io = IO(new Bundle {
    val sel = Input(UInt(1.W))
    val in0 = Input(UInt(1.W))
    val in1 = Input(UInt(1.W))
    val out = Output(UInt(1.W))
  })
  io.out := (io.sel & io.in1) | (~io.sel & io.in0)
}


