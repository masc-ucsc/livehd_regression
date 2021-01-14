module wideexpr_00700(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 3'sb010;
  assign y1 = 2'sb00;
  assign y2 = u6;
  assign y3 = ~|(1'sb1);
  assign y4 = 4'sb1100;
  assign y5 = 2'sb10;
  assign y6 = ^(1'sb0);
  assign y7 = (ctrl[6]?(ctrl[5]?s1:($signed(s7))>>>(((((ctrl[3]?(ctrl[2]?-(s5):(ctrl[6]?s1:1'sb0)):(-(4'sb1100))<<(6'sb101111)))<<<((s5)<<((ctrl[1]?$signed(u5):(6'sb000001)<<<(s3)))))<<<({({(ctrl[1]?s4:6'sb110101),(s4)&(5'sb11001)})>=(($signed(u4))-((u1)>>>(s3))),((ctrl[3]?{1{5'sb10010}}:(ctrl[7]?4'b0100:5'b11100)))|((ctrl[4]?(s4)==(3'sb001):{5'sb00010,3'sb101})),$signed(1'sb1),(ctrl[1]?u7:s4)}))|(s3))):(ctrl[3]?$signed(((ctrl[2]?(s7)^~((+(s2))&(((ctrl[5]?1'sb0:3'sb100))-(5'sb10000))):(s1)>>($signed(((ctrl[1]?4'sb0100:6'sb011011))+((4'sb0011)^(s0))))))-(((ctrl[4]?s2:(s2)>>(((u6)<<(s4))+({u0,u6}))))>>>((ctrl[1]?2'sb01:{3{5'sb00011}})))):$signed((($signed(((ctrl[4]?(s3)|(s7):6'sb110110))|(((s5)>>(4'sb1010))+((s1)^(5'sb11101)))))^~((-($signed($signed(s2))))^~(+($unsigned(&(2'sb10))))))<<(&((ctrl[4]?1'sb0:5'sb10111))))));
endmodule
