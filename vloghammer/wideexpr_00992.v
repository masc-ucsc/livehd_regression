module wideexpr_00992(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s7;
  assign y1 = (((~^(-((ctrl[7]?(ctrl[3]?(ctrl[6]?s2:s4):(s0)+(s4)):(ctrl[4]?(1'sb0)>>>(4'sb1111):2'sb00)))))!=(u3))+({1{$signed($signed((ctrl[4]?((ctrl[2]?1'sb0:3'sb000))^($signed(6'sb101001)):1'sb1)))}}))|(&(+((6'sb011011)>>(6'sb000101))));
  assign y2 = $signed((((5'sb10000)^((ctrl[0]?s5:s0)))>>>($signed((1'sb0)-(3'b001))))+($signed({4{$signed(s4)}})));
  assign y3 = {2{((s2)>>>((((4'b1010)<<(6'sb011001))+(u3))|(({2{5'b00001}})<((6'b110010)^(u3)))))^~(1'sb0)}};
  assign y4 = u7;
  assign y5 = {1{3'sb001}};
  assign y6 = (u2)>=((u1)<<($signed(4'sb0011)));
  assign y7 = ((($signed(3'sb100))^~($signed(s5)))<<((ctrl[5]?({2{((ctrl[3]?s5:s3))>>((ctrl[0]?{3{1'sb0}}:u0))}})<<(s7):6'sb010000)))<<(s1);
endmodule
