// See LICENSE.txt for license details.
package Mul

import chisel3._
import scala.collection.mutable.ArrayBuffer

// Problem:
//
// Implement a four-by-four multiplier using a look-up table.
//
class Mul extends Module {
  val io = IO(new Bundle {
    val x   = Input(UInt(2.W))
    val y   = Input(UInt(2.W))
    val z   = Output(UInt(4.W))
  })
  val mulsValues = new ArrayBuffer[UInt]()

  // Calculate io.z = io.x * io.y by generating a table of values for mulsValues

  for (i <- 0 until 4)
    for (j <- 0 until 4)
      mulsValues += (i * j).asUInt(4.W)
  val tbl = VecInit(mulsValues)
  io.z := tbl((io.x << 2.U) | io.y)

}
