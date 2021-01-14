module wideexpr_00514(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((((ctrl[1]?(ctrl[3]?s4:s5):$signed(s6)))>>((ctrl[7]?(6'sb100101)+(2'sb11):4'sb1000)))>>((1'b1)<<<(s4)))>>>(u7);
  assign y1 = {3{2'sb00}};
  assign y2 = -(~^(6'sb110010));
  assign y3 = (((ctrl[7]?s6:s7))>>>((s4)^~(+((ctrl[1]?s2:s2)))))-((s1)|((ctrl[2]?(-(6'sb001001))<<<($signed(s0)):(ctrl[1]?3'sb000:6'sb100001))));
  assign y4 = $signed((($signed({1{$unsigned($signed(1'b1))}}))<($signed(&(({s3,u3,6'sb111100,u6})<=({s4,s3,3'sb001,3'sb000})))))^~($unsigned((ctrl[2]?s6:u4))));
  assign y5 = +((((ctrl[2]?((ctrl[0]?s4:s4))|((ctrl[0]?u1:3'sb110)):s1))>>>((u7)<<<(4'sb1101)))<<<(s2));
  assign y6 = (s4)+(s0);
  assign y7 = s5;
endmodule
