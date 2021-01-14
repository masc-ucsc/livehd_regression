module wideexpr_00157(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[3]?(s1)|(2'sb00):1'sb1);
  assign y1 = (s3)^~((((ctrl[7]?$signed((-(2'sb00))<<<((ctrl[6]?2'sb10:s3))):(s3)&(4'sb1100)))+(1'sb1))>>>(s6));
  assign y2 = s1;
  assign y3 = 5'sb10111;
  assign y4 = ({(4'b1110)!=(s5),$signed((s5)^(((ctrl[7]?s0:6'sb001101))>>((s6)+(s0)))),($signed({4{(6'sb011011)|(s0)}}))|(3'sb010),4'sb1111})-(s5);
  assign y5 = ((s1)>>((ctrl[6]?(($signed(s7))<<<((s2)<<(((2'sb00)|(4'sb1000))>>((ctrl[5]?s3:s2)))))|((s7)&(s7)):(+($signed(($unsigned(u6))>>(+(5'sb00110)))))>>(u2))))!=(4'sb1010);
  assign y6 = ^(-((ctrl[0]?(ctrl[7]?(+(6'sb111100))-(2'sb11):$signed((ctrl[5]?s6:6'b101110))):+(s0))));
  assign y7 = (ctrl[1]?(2'sb11)>>>(u6):+({-($unsigned(s1)),-({3{((s5)+(s0))<<<($unsigned(1'b1))}})}));
endmodule
