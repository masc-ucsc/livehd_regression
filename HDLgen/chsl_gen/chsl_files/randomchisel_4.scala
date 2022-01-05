package randomchisel
import chisel3._
import chisel3.util._

class randomchisel extends Module {
	val io = IO(new Bundle {
		val a0 = Input(SInt(3.W))
		val a1 = Input(UInt(4.W))
		val a2 = Input(SInt(5.W))
		val a3 = Input(UInt(6.W))
		val a4 = Input(SInt(3.W))
		val y = Output(UInt(21.W))
	})



	val y0 = Wire(SInt(3.W))
	val y1 = Wire(UInt(4.W))
	val y2 = Wire(SInt(5.W))
	val y3 = Wire(UInt(6.W))
	val y4 = Wire(SInt(3.W))



	when(~((~(io.a4(2)>io.a0(1))).asUInt - ((!io.a4(2,1))).asUInt).asBool) {
		y0 := (~((io.a4)) | (io.a0))} .otherwise {
		y0 := ((~io.a4) & (~io.a4))}
	y1 := ~((~io.a2(3,0)) - (~io.a2(3,0)))
	when((~io.a4(0)).asUInt.asBool) {
		y2 := (io.a2)} .otherwise {
		y2 := (((~io.a2)) & ((~io.a2)))}
	y3 := ~(~(~((~io.a3(5,0))) ^ ((~io.a3(5,0)))) ^ ~(((io.a3(5,0))) & ((io.a3(5,0)))))
	y4 := ((io.a4) & ~(((~y0)) & (~io.a4)))
	io.y := Cat(y4(2,0),y3(5,0),y2(4,0),y1(3,0),y0(2,0))
}
