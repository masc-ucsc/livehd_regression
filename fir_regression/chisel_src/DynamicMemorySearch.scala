// See LICENSE.txt for license details.
package DynamicMemorySearch

import chisel3._
import chisel3.util.log2Ceil

// Problem:
//
// This module should be able to write 'data' to
// internal memory at 'wrAddr' if 'isWr' is asserted.
//
// This module should perform sequential search of 'data'
// in internal memory if 'en' was asserted at least 1 clock cycle
//
// While searching 'done' should remain 0,
// 'done' should be asserted when search is complete
//
// If 'data' has been found 'target' should be updated to the
// address of the first occurrence
//
class DynamicMemorySearch() extends Module {
  val io = IO(new Bundle {
    val isWr   = Input(Bool())
    val wrAddr = Input(UInt(log2Ceil(8).W))
    val data   = Input(UInt(4.W))
    val en     = Input(Bool())
    val target = Output(UInt(log2Ceil(8).W))
    val done   = Output(Bool())
  })
  val index  = RegInit(0.U(log2Ceil(8).W))

  val list   = Mem(8, UInt(4.W))
  val memVal = list(index)

  val done   = !io.en && ((memVal === io.data) || (index === (8-1).asUInt))

  when (io.isWr) {
    list(io.wrAddr) := io.data
  } .elsewhen (io.en) {
    index := 0.U
  } .elsewhen (done === false.B) {
    index := index + 1.U
  }
  io.done   := done
  io.target := index
}
