module wideexpr_00585(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {(5'b10001)!=(u5)};
  assign y1 = (((s7)<<((+(4'sb0000))<<<(s1)))<=(+($signed(s0))))>(|(-((5'sb11000)<<<($signed(s5)))));
  assign y2 = (ctrl[5]?(+(3'b001))<<<((s1)^({{2{s7}},s7})):+(s7));
  assign y3 = ({4{s2}})>>(~(2'b01));
  assign y4 = |((({$signed((({2{5'sb00111}})&({4{u3}}))==(+($signed(u3))))})^((ctrl[0]?{s0,(ctrl[6]?(ctrl[6]?s1:s0):4'sb0000),((3'sb001)&($signed(3'sb000)))>>>(((s0)&(u5))<<<((5'sb00011)^~(s6)))}:{2{6'sb010100}})))&($signed((ctrl[3]?u0:6'b010101))));
  assign y5 = $signed(~^(((s0)&((s7)>>>((~((5'sb01001)+(u2)))^($signed((3'sb000)!=(s2))))))>>>((ctrl[5]?$signed(+(5'sb10100)):s0))));
  assign y6 = (s2)>>((u4)^($signed($signed((ctrl[1]?(ctrl[2]?($signed({2'sb00}))^(($signed(u2))^~((s1)>>>(3'b101))):+(3'sb110)):(6'sb001100)<<({2{4'sb1010}}))))));
  assign y7 = (ctrl[6]?$unsigned({2{((ctrl[5]?(-(s5))&(2'sb00):+(+((ctrl[7]?u7:s5)))))-((ctrl[2]?$signed(u5):+(({4{s0}})<<<(s5))))}}):(((ctrl[0]?{3'sb110}:{($unsigned(+(5'sb01111)))|(s5),({$signed(s5),$signed(4'b1011)})>>(+(s2)),((ctrl[1]?5'sb11000:(s5)<<(5'sb00111)))&(s5),(ctrl[5]?(+(u4))^(+(s7)):(+(u1))|(-(s1)))}))<<<((ctrl[5]?{3{-((ctrl[0]?s1:2'b11))}}:{2{(((s2)+(s2))<<(4'sb0110))>>(u3)}})))+((5'b00101)<({3{(6'b001011)-(~|($unsigned(6'sb100111)))}})));
endmodule
