module wideexpr_00001(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s0;
  assign y1 = $unsigned(1'b0);
  assign y2 = (4'sb1001)>(s4);
  assign y3 = (3'sb011)>>>((ctrl[1]?+(-((($signed(3'sb011))>>>({4{{s3,1'b0,u3}}}))>>>(^(u7)))):$signed(4'sb0011)));
  assign y4 = s5;
  assign y5 = 1'b1;
  assign y6 = u3;
  assign y7 = (((ctrl[6]?u6:6'b010110))<<((ctrl[5]?((6'sb101101)+(5'sb11100))<<($signed(6'sb110101)):+(2'sb11))))-(!((1'sb1)<<($signed($signed(u2)))));
endmodule
