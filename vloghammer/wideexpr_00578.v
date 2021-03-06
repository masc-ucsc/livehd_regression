module wideexpr_00578(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (({(4'b1110)<<<((3'sb110)&($signed(2'sb00))),(s6)>>>((+((ctrl[1]?(3'sb000)>>(5'sb00110):-(u1))))!=((ctrl[6]?($signed(6'sb010100))>>>({s6}):$unsigned($signed(5'sb11000))))),((ctrl[3]?(s6)>>($signed((u3)&(u7))):(ctrl[1]?$signed((u0)^~(u0)):$signed($signed(1'sb1)))))<((ctrl[2]?4'sb0100:$signed(((2'sb01)<<<(2'sb10))&(s7))))})<<<(((4'sb1001)>>>($signed({1{2'sb10}})))&(+(s5))))<=({-(($signed((6'sb001110)-(-(-(s5)))))<<((5'sb11101)>>>((u0)^((ctrl[2]?(2'sb11)<=(s1):(s2)>>>(5'sb11110))))))});
  assign y1 = $signed(((|((s6)>=(4'sb0001)))>>>($signed((6'sb100100)+(2'b10))))-({3'sb100}));
  assign y2 = 2'sb11;
  assign y3 = ({(|($signed($unsigned(6'sb100101))))>>(((ctrl[6]?+(5'sb01000):$signed(s6)))^~($signed(+(s4))))})<<<({2{(s4)^($signed(~&((6'sb110000)>>(s5))))}});
  assign y4 = $unsigned($signed($signed(($unsigned(5'sb00111))>((s3)|(3'b100)))));
  assign y5 = 4'sb1010;
  assign y6 = 5'sb11010;
  assign y7 = -(((s4)^~((ctrl[6]?3'sb000:$signed(({(ctrl[6]?-(u6):(ctrl[1]?u3:4'sb1001)),+((ctrl[4]?2'sb00:s0)),{3{(s0)>(s7)}},u4})>(s0)))))>>>(($signed(4'sb1101))>>($signed({4{$signed(-({(s1)|(s4),(s0)>>>(5'sb00000)}))}}))));
endmodule
