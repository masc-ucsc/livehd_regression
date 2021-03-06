module wideexpr_00412(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((((((4'sb1111)|(6'sb011001))>>>(s3))&(($signed(6'sb110010))&(+(6'sb011010))))^((($signed(4'sb0101))>>(|(4'b0101)))>>>(-((ctrl[6]?4'sb0010:s0)))))>>>($signed((((5'sb01110)<<<(s0))-((5'sb00101)>>(6'b011011)))!=((ctrl[7]?(ctrl[4]?s6:s3):(s2)^(s2))))))>($signed({1{s1}}));
  assign y1 = (ctrl[0]?-((((s4)>(u0))|($signed(s6)))>>(s3)):(s2)^(6'sb000101));
  assign y2 = -(((-({s6,3'sb000,s2,3'sb101}))^~(-(6'b001001)))==((1'sb0)-(((ctrl[1]?s0:1'sb1))|((6'sb110000)-(s1)))));
  assign y3 = u0;
  assign y4 = (4'sb0110)^(5'sb01010);
  assign y5 = s1;
  assign y6 = +((ctrl[1]?((($unsigned((ctrl[6]?s5:2'sb10)))>=({3{$signed(s1)}}))|(~|((s7)<<((2'sb00)<<<(s5)))))==(s4):($signed((6'sb101011)^(s6)))<((+($signed((s4)<<(s2))))<<<((s3)>>>(($signed(1'b1))<<<($signed(s4)))))));
  assign y7 = (-(($signed(6'sb101010))>>({2{(ctrl[6]?(1'sb0)>>>(4'sb1011):$unsigned(2'sb10))}})))^~(((ctrl[3]?((ctrl[6]?4'sb0000:(s0)>>(4'sb0010)))-($signed(^(2'b10))):($signed((5'sb11111)&(s5)))|(s2)))-((4'sb0001)>>({{1{+(4'sb0010)}},(&(u3))<((ctrl[3]?5'sb01101:1'b1)),$signed($signed(s3))})));
endmodule
