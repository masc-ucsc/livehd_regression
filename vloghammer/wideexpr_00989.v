module wideexpr_00989(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[5]?3'sb100:-(s7)))>=(-((((ctrl[1]?$unsigned(4'sb0010):(4'b0011)^(1'sb1)))<<(5'sb11000))^(((ctrl[5]?s0:(s6)+(s4)))+($signed(1'b1)))));
  assign y1 = (ctrl[7]?s6:((5'sb10011)>>($signed(s2)))>>(1'sb1));
  assign y2 = s3;
  assign y3 = s7;
  assign y4 = (1'sb0)^~(((ctrl[5]?$signed((((ctrl[7]?u6:s0))>>>($unsigned(s6)))+(((6'b000000)&(s0))>>((3'sb010)-(3'b010)))):$signed(({2{(1'sb1)>>(u3)}})>(5'b01100))))|($signed(-($signed((s6)>>>(-(s6)))))));
  assign y5 = 4'sb1111;
  assign y6 = (s3)+($signed((($signed(s7))^~((2'sb10)|(s4)))>>((ctrl[4]?(ctrl[7]?s7:2'sb01):s6))));
  assign y7 = (s1)>>>((!(-((6'sb000110)==((ctrl[2]?u5:3'sb110)))))<<<((s5)>>>(+((ctrl[5]?(u4)!=(u6):{s4,u3,s1,s4})))));
endmodule
