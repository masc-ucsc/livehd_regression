module wideexpr_00293(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 6'b000100;
  assign y1 = (ctrl[2]?$signed((ctrl[6]?(ctrl[7]?+({(ctrl[6]?u4:(2'b11)>(6'b011001))}):1'sb1):$signed(1'sb0))):(s6)+(s1));
  assign y2 = (ctrl[5]?$signed({1{$signed((ctrl[0]?(s4)+(s0):1'b1))}}):+((u1)-(((^(s3))<<((s2)>>(s4)))<<(($signed(1'sb1))<<<({3'sb010,6'sb100000})))));
  assign y3 = (ctrl[2]?(-(s7))>=((($signed((5'sb00000)==((5'sb01010)>>(+(u4)))))<((3'sb110)<<(((+(u0))+((s2)+(5'sb01000)))>>>((~|(u0))<<(s4)))))>>>((ctrl[7]?(ctrl[1]?{|(2'sb01),{1{(s4)<(3'b111)}}}:((ctrl[1]?4'b1100:(u4)-(5'b00000)))-((ctrl[1]?2'b01:$signed(3'b001)))):{((ctrl[2]?s0:2'sb11))+(-({4'sb1011,5'sb11110})),({4{(2'b01)^~(2'b10)}})&({3{(6'sb111000)^(2'sb11)}}),((ctrl[7]?(6'sb111101)>>>(s2):(6'sb100110)|(s3)))!=((ctrl[5]?(s0)>>(s6):(6'sb001101)^(3'sb011))),5'sb11001}))):($signed(-(4'sb0010)))>>($signed((s3)==(s2))));
  assign y4 = (($signed({(ctrl[1]?$signed((s1)&(s3)):(ctrl[1]?s5:(ctrl[2]?s0:5'sb10100)))}))>>({3'sb101}))^~((((ctrl[6]?$signed(+((ctrl[5]?s4:s1))):s3))<<<($signed(6'sb110100)))<<<($unsigned(~({2{(ctrl[5]?s2:(3'sb010)>>>(1'sb0))}}))));
  assign y5 = $signed(((ctrl[6]?($signed(s4))-($signed((($signed(4'sb0100))^~((6'sb100101)>>>(s3)))&(-((4'sb1000)<<(4'sb0001))))):$signed(+(s5))))<<({4{(ctrl[2]?u3:$unsigned(((ctrl[5]?(ctrl[1]?5'sb11101:3'sb101):+(4'sb1001)))^~(((s2)|(s5))<<({u2,s7}))))}}));
  assign y6 = {1{$signed($signed(3'sb001))}};
  assign y7 = ((4'sb0010)&({1{($unsigned(s1))<<<($signed((ctrl[7]?(ctrl[5]?(ctrl[2]?s4:6'sb010101):(ctrl[3]?s3:6'sb110111)):(2'sb01)>>((ctrl[5]?6'sb010001:2'sb00)))))}}))>>>({4{-((2'sb11)>>>(u2))}});
endmodule
