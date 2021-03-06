module wideexpr_00502(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = +(-((s2)^~($signed(((3'b011)<<((s0)<<(+(4'sb0101))))<<<(($signed((5'b00010)<<(4'sb1000)))>=(-(~^(s1))))))));
  assign y1 = (($signed({2{3'b100}}))>>>(($unsigned(s5))<<<(1'b1)))+(-(3'b100));
  assign y2 = $signed(((s2)-((+(s6))+((ctrl[3]?(5'sb00101)>>((ctrl[0]?$signed(s0):(ctrl[5]?(u1)>>(3'sb011):(2'sb00)<<(1'sb0)))):(ctrl[5]?(({s5,s2,u5,s3})|(2'b11))>>({1{(s5)^(1'sb0)}}):u3)))))<=((ctrl[2]?(ctrl[6]?(((ctrl[4]?(ctrl[3]?{3{u7}}:{4{s1}}):(ctrl[5]?{s4,1'b1,2'sb01}:(s1)<<(s1))))>>((($unsigned(6'sb110110))>>((1'sb0)|(1'sb0)))+((s5)==((1'sb0)+(1'sb1)))))&(((ctrl[4]?(ctrl[2]?$signed(4'sb1100):(3'sb011)>>>(s1)):((ctrl[0]?3'sb110:5'b11010))^~({2{s0}})))>(+(2'sb11))):{4{(ctrl[5]?-(-($unsigned(4'sb0001))):((s6)<<<(+(s3)))-((ctrl[6]?(2'sb00)>>(s0):$signed(3'sb111))))}}):s7)));
  assign y3 = +($signed((((s4)>>(3'sb001))|((5'sb01010)>>(5'sb10010)))&(+((ctrl[3]?u2:u1)))));
  assign y4 = s0;
  assign y5 = ($unsigned({s7,s4,((ctrl[5]?s4:6'sb000010))<<((($unsigned(5'sb11111))>>>(+(s0)))-(6'b001100)),s4}))-(($signed(+(2'sb00)))<(5'sb00100));
  assign y6 = u5;
  assign y7 = $signed((ctrl[0]?{3{(((6'sb010111)!=(4'sb0100))>>({$signed(4'b1000),({6'sb010000})>>>(((3'sb010)>>>(6'sb011011))<(4'b0100)),{(ctrl[4]?(s0)<<(s4):5'sb00100),(ctrl[6]?1'b1:4'b1001)}}))|(u0)}}:$unsigned({5'sb01010})));
endmodule
