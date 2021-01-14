module wideexpr_00110(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
  input [7:0] ctrl;
  input [0:0] u0;
  input [1:0] u1;
  input [2:0] u2;
  input [3:0] u3;
  input [4:0] u4;
  input [5:0] u5;
  input [6:0] u6;
  input [7:0] u7;
  input signed [0:0] s0;
  input signed [1:0] s1;
  input signed [2:0] s2;
  input signed [3:0] s3;
  input signed [4:0] s4;
  input signed [5:0] s5;
  input signed [6:0] s6;
  input signed [7:0] s7;
  output [127:0] y;
  wire [15:0] y0;
  wire [15:0] y1;
  wire [15:0] y2;
  wire [15:0] y3;
  wire [15:0] y4;
  wire [15:0] y5;
  wire [15:0] y6;
  wire [15:0] y7;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7};
  assign y0 = $signed($signed(((((ctrl[2]?3'sb000:2'sb10))<(((5'sb11011)>>>(($signed(s7))>>>((2'b10)&(5'b01110))))-(($signed(+(s7)))>>>(-((2'sb10)<<<(s2))))))^($signed(6'b011110)))>>>(2'sb00)));
  assign y1 = ~^(2'b10);
  assign y2 = 3'b110;
  assign y3 = ((ctrl[4]?$signed(((4'sb1011)<<(((ctrl[0]?{{5'b10001,s1},(ctrl[1]?3'sb011:s1),$unsigned(s3),(ctrl[6]?3'sb011:s3)}:((s3)<<<(1'sb1))>(-(1'sb1))))==({1{$signed((3'sb011)<<<(2'b00))}})))<<<(2'b00)):4'sb1011))^~((+((ctrl[1]?(-(&($unsigned(~(u2)))))^(s6):$signed((ctrl[7]?(3'sb110)>>>(((s2)>>(4'sb0110))>>($signed(u2))):((ctrl[5]?4'sb0010:+(3'sb001)))+((s3)<<<((u6)<=(6'sb101000))))))))-(2'sb10));
  assign y4 = (ctrl[3]?2'sb10:4'sb0110);
  assign y5 = s1;
  assign y6 = ((ctrl[3]?u3:(6'sb100111)!=(((4'sb1011)<<<(-((3'b010)-(6'sb010101))))|(((ctrl[0]?(s4)+(s4):(ctrl[0]?2'sb10:s7)))>>>(2'sb11)))))>>>(~&(+((((5'sb01101)+((2'sb11)+(4'sb0011)))|((4'sb0110)-(3'sb111)))+((ctrl[6]?s5:(ctrl[5]?1'sb0:s1))))));
  assign y7 = ((((ctrl[1]?1'sb0:5'sb10111))<<<(u0))-(s6))<<<((ctrl[0]?2'sb01:-((2'b10)&({$unsigned($signed(s2)),s6}))));
endmodule
