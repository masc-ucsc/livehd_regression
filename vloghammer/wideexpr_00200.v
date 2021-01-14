module wideexpr_00200(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s5;
  assign y1 = +({(ctrl[4]?$unsigned({3'sb011,5'sb11101,s7}):{1'sb1}),(ctrl[2]?$unsigned((ctrl[7]?s1:2'sb11)):$unsigned({3{u3}})),$signed($signed(+(s6))),((-(s3))>>(+(u1)))-($signed((ctrl[4]?s2:2'sb11)))});
  assign y2 = u5;
  assign y3 = -((ctrl[0]?(ctrl[5]?6'sb101011:s6):-((((ctrl[3]?$signed(({s5,1'sb0,2'b01,6'sb000111})<<<((s3)|(5'sb10110))):+(((ctrl[0]?5'sb10110:u4))^({s2,s4}))))|(s2))^((ctrl[0]?s5:6'sb011101)))));
  assign y4 = ((&(4'sb0110))<((s1)<<<(({1{(ctrl[7]?5'sb01110:3'sb100)}})>>(~^((u7)>>(s4))))))^~(^(s5));
  assign y5 = s7;
  assign y6 = -((-(1'b1))^~(-((ctrl[0]?($signed($signed(s2)))!=($unsigned(s0)):!($signed({1{4'sb0111}}))))));
  assign y7 = 2'b10;
endmodule
