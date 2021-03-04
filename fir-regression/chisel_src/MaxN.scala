// See LICENSE.txt for license details.
package MaxN

import chisel3._

// Problem:
//
// Implement test for this module. Please edit:
// .../chisel-tutorial/src/test/scala/problems/MaxNTests.scala
//
class MaxN() extends Module {

  private def Max2(x: UInt, y: UInt) = Mux(x > y, x, y)

  val io = IO(new Bundle {
    val ins = Input(Vec(3, UInt(8.W)))
    val out = Output(UInt(8.W))
  })
  io.out := io.ins.reduceLeft(Max2)
}
