module wideexpr_00509(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = +(s5);
  assign y1 = -(6'b001100);
  assign y2 = (((+($unsigned(((+($signed(s4)))-(5'sb00011))+(s7))))<=(s0))-(2'b00))>=({1{(ctrl[1]?{5'sb11111,(ctrl[5]?5'sb10110:|((~&($signed(3'sb011)))>>(6'sb101000))),((+(($unsigned(u0))|((u4)==(s7))))-($signed((ctrl[2]?s6:(s3)^(s6)))))<<((ctrl[3]?s7:(ctrl[5]?-((s6)^~(s1)):4'sb1001))),(1'sb1)+($signed(((ctrl[2]?(5'b00000)+(u1):{3{2'b01}}))&(((6'sb100111)==(s7))!=(3'b000))))}:((ctrl[7]?$signed(6'sb011000):1'sb0))>>>((((+((ctrl[3]?4'b1111:u3)))|(s5))^(-(+((s1)>>>(6'sb101011)))))==((s1)<<((ctrl[4]?s3:((5'sb01001)^(s6))|(-(s4)))))))}});
  assign y3 = -((+((ctrl[2]?(1'b1)+(s6):(s7)>=(4'sb1011))))<<(u2));
  assign y4 = -((2'sb00)>>>(s0));
  assign y5 = {3{((ctrl[1]?(ctrl[1]?~^({3{s0}}):$signed(6'sb110100)):(ctrl[3]?3'sb110:({1{6'sb011011}})<<<(u5))))|({1{4'sb0000}})}};
  assign y6 = &(s6);
  assign y7 = 1'sb1;
endmodule
