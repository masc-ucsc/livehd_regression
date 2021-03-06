module wideexpr_00328(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed(((ctrl[1]?$signed((s3)^(+(((s6)-(4'sb1100))-($signed(6'b111101))))):(ctrl[5]?(($signed((ctrl[0]?s0:6'sb011001)))<<<($signed((5'sb10101)|(6'sb001110))))&(6'sb001111):(s3)>>>(1'b0))))^~(4'sb1000));
  assign y1 = {($signed((ctrl[6]?u1:-(5'sb00011))))>>((($signed(+({3{u1}})))>>($signed({1{+(5'sb01010)}})))>(($signed(u7))+((ctrl[3]?((3'sb011)>>(s7))+(s7):6'sb111110)))),1'sb1,s0,4'sb1111};
  assign y2 = -((ctrl[1]?(ctrl[4]?+((s4)<<<(2'sb10)):(ctrl[1]?(ctrl[5]?s1:s3):s7)):+(s7)));
  assign y3 = 5'b11010;
  assign y4 = s4;
  assign y5 = s6;
  assign y6 = {(ctrl[1]?$unsigned(s0):($unsigned(1'b0))|({2{s7}})),u6,4'sb0110};
  assign y7 = u4;
endmodule
