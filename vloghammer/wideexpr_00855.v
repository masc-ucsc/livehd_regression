module wideexpr_00855(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 2'sb00;
  assign y1 = (s7)&({((ctrl[6]?s1:6'sb101000))&(($signed({1{6'sb111111}}))<<<((+(1'sb1))^(4'sb1100))),{((s2)>(({s6,4'sb0000,3'sb000,(-(s0))^~(4'sb1111)})-(1'sb0)))^~(((ctrl[7]?(!((1'sb0)>>(s7)))!=(s0):3'sb001))<<<(u0)),u4,2'sb01,1'sb1}});
  assign y2 = $signed(4'sb1111);
  assign y3 = (((($signed(3'b111))-($signed(1'b0)))>>>(~(1'sb0)))>>($unsigned($unsigned({5'sb11100,5'sb00001}))))|(-({2{6'sb100110}}));
  assign y4 = ({2'sb00})-({1{{{+(s7),+(s4)},s6}}});
  assign y5 = (+(6'sb011100))<<(1'sb1);
  assign y6 = (3'sb000)>>($unsigned($unsigned($signed((ctrl[7]?s5:4'sb1100)))));
  assign y7 = 1'b0;
endmodule
