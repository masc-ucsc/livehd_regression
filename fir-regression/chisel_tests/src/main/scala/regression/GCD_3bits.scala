// See README.md for license details.

package GCD_3bits

import chisel3._

/**
  * Compute GCD using subtraction method.
  * Subtracts the smaller from the larger until register y is zero.
  * value in register x is then the GCD
  */
class GCD_3bits extends Module {
  val io = IO(new Bundle {
    val value1        = Input(UInt(3.W))
    val value2        = Input(UInt(3.W))
    val loadingValues = Input(Bool())
    val outputGCD     = Output(UInt(3.W))
    val outputValid   = Output(Bool())
  })

  val x  = Reg(UInt())
  val y  = Reg(UInt())

  when(x > y) { x := x - y }
    .otherwise { y := y - x }

  when(io.loadingValues) {
    x := io.value1
    y := io.value2
  }

  io.outputGCD := x
  io.outputValid := y === 0.U
}
