module wideexpr_00666(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[4]?(1'sb0)^~(($signed($signed({2{$signed(6'sb010010)}})))^((5'sb11011)>>>(6'sb001011))):+(s5)))>>>((($signed($unsigned(u7)))&($signed((($signed(+(6'sb001101)))+(s4))<<<((ctrl[5]?(ctrl[1]?(ctrl[0]?s4:3'sb011):(2'sb11)<<(u1)):(s4)&((6'sb110101)<<<(s6)))))))-(+(($signed((ctrl[7]?((3'sb011)<<(5'sb01010))<<({u5,6'sb010000,1'sb0,5'sb10011}):6'sb001100)))==({$signed(-($signed(s0))),(5'sb10101)<<<((ctrl[6]?(ctrl[4]?s3:s5):(s3)-(s0)))}))));
  assign y1 = s4;
  assign y2 = ({(s7)-(4'sb1100),(u2)<((($signed(s6))!=(6'sb100011))<<<(4'sb0111))})>>({s4,($signed(|({s7,6'b100111,s2,u7})))>((ctrl[3]?((2'sb00)+(s4))|($signed(5'b00010)):(ctrl[4]?(ctrl[7]?3'sb100:s4):(ctrl[5]?s6:6'sb000011)))),$unsigned(($signed(+(u0)))-(-(3'sb011))),$signed(s7)});
  assign y3 = +({3{2'sb10}});
  assign y4 = {4{(ctrl[3]?2'sb11:-({(ctrl[1]?4'sb1111:s3),~&(5'b00000)}))}};
  assign y5 = (-(s2))^((ctrl[5]?(+((ctrl[0]?6'sb001110:s6)))<<<(u3):-(5'sb01011)));
  assign y6 = s2;
  assign y7 = -(s0);
endmodule
