module wideexpr_00348(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[2]?((ctrl[4]?(1'sb0)==(s5):(ctrl[3]?u3:1'b0)))>(((4'sb1111)>>(s1))==(s1)):(&(!(4'sb0110)))^({4{(1'sb1)>=(s7)}})))>>(~&(-($signed(~|(s7)))));
  assign y1 = 4'sb1000;
  assign y2 = s4;
  assign y3 = (5'sb11110)>>>(s2);
  assign y4 = (ctrl[4]?u6:$unsigned(5'sb01000));
  assign y5 = 5'sb00000;
  assign y6 = 3'sb011;
  assign y7 = s2;
endmodule
