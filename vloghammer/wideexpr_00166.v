module wideexpr_00166(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {1{6'sb001111}};
  assign y1 = 5'sb00010;
  assign y2 = 5'sb11001;
  assign y3 = ((ctrl[6]?s4:(ctrl[5]?1'sb1:((s4)>>($signed((4'b0101)&($unsigned($signed(2'b10))))))^~(-(s2)))))>(((+(((ctrl[2]?s3:$signed(((ctrl[3]?s6:5'sb01010))^((3'sb100)-(s4)))))<(+($signed(((s1)<<(s7))>>({5'sb00110}))))))&((+({(ctrl[2]?{(ctrl[4]?6'b100100:1'sb1),{u4,6'sb100101,5'b01001},+(u7),(ctrl[5]?3'sb001:s0)}:(ctrl[2]?5'b01110:(u4)>>>(s2)))}))^~(-({s1}))))<<((2'sb01)|($signed(($signed((ctrl[2]?({1{2'sb10}})&(6'b011100):&(-(s3)))))+($signed((($signed(s2))>((ctrl[2]?s5:5'b11101)))>(({1{u1}})<<((ctrl[2]?1'sb1:s3)))))))));
  assign y4 = (ctrl[7]?($signed(5'sb10001))>($signed(({1{(ctrl[0]?(3'b001)>>>({4{2'b10}}):~|(s4))}})+(((-((s5)+(3'sb010)))<((ctrl[3]?s3:(ctrl[5]?5'sb00111:s4))))==(((2'b00)<<<((s6)-(u5)))|(({2{2'sb01}})<<(3'sb111)))))):$signed(6'sb101111));
  assign y5 = s6;
  assign y6 = s5;
  assign y7 = s5;
endmodule
