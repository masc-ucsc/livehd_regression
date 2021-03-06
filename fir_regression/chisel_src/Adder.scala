// See LICENSE.txt for license details.
package Adder

import chisel3._

// Problem:
//
// 'out' should be the sum of 'in0' and 'in1'
// Adder width should be parametrized
//
class Adder extends Module {
  val io = IO(new Bundle {
    val in0 = Input(UInt(8.W))
    val in1 = Input(UInt(8.W))
    val out = Output(UInt(8.W))
  })
  io.out := io.in0 + io.in1
}
