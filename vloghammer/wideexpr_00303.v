module wideexpr_00303(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ({3{1'sb1}})-($signed(((ctrl[2]?{s6,u5,3'sb000,1'sb1}:{5'b10100}))|(u6)));
  assign y1 = (-(s5))^(((ctrl[0]?+(s3):$signed(((ctrl[5]?(ctrl[2]?({s3})>>((4'sb1011)!=(4'sb1110)):~&({s4})):(ctrl[2]?s7:{$signed(1'sb1),s6})))+(((((ctrl[3]?s7:u5))>>($signed(1'sb1)))^({(1'sb1)<<<(u7),{s7,u1},(s4)>>>(u7)}))>>>(s4)))))<<(s4));
  assign y2 = {4{1'sb1}};
  assign y3 = ((ctrl[0]?s4:($signed(((6'sb010100)+(s4))!=(-(2'sb01))))^(4'sb0001)))<($signed((({(5'sb00000)>>(s7),u2,{3{u1}},+(3'sb100)})>>(6'sb111001))<({-((6'sb110111)<<<(1'sb0)),$unsigned($signed(s3))})));
  assign y4 = (ctrl[1]?$signed((-(({$signed(((u0)<=(u6))^((ctrl[4]?5'b00110:s1))),{((5'sb01000)>=(4'b1111))<<((2'sb10)|(6'sb100010)),1'sb0,-(5'sb11001)},{$unsigned(+(5'sb11000)),2'sb10,|(s5),6'sb111001},s7})&(^(+(-((s3)<<<(1'sb0)))))))>>>(5'sb10100)):s3);
  assign y5 = ((s7)>>($signed(s2)))+(({1{-(($signed((ctrl[0]?(6'sb011101)>>>(s4):(6'sb011110)<<<(u4))))+(~^((ctrl[5]?1'sb1:1'sb0))))}})<($signed(u6)));
  assign y6 = u3;
  assign y7 = ({$unsigned((-(s3))>=(((s3)|(3'sb100))-($signed(s7)))),-(({{s3},(s7)<<(s1),{6'sb111001,s3,3'sb011,5'sb01000},(u2)>(4'sb1100)})==(3'b100)),((1'sb1)<<<({4{$unsigned(6'sb111101)}}))>>>((ctrl[1]?+((s1)^~(5'sb11100)):$signed((ctrl[3]?6'b100001:4'b0010))))})<<(s5);
endmodule
