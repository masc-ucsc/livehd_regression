module wideexpr_00823(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((~(3'sb100))>>>(((6'b011111)>>>(((6'sb101110)^(s3))<((2'sb01)+(1'sb1))))-(&({{2'sb10,4'sb0110,s5},$signed(s6),(2'sb10)>>>(4'sb1000),{4{1'sb1}}}))))>>>($signed(6'sb011111));
  assign y1 = 5'sb01110;
  assign y2 = 6'sb010101;
  assign y3 = ((ctrl[3]?$signed({3{{s0}}}):s4))>>>(6'sb101011);
  assign y4 = 4'b0110;
  assign y5 = ((s3)^~((2'sb10)>>($unsigned((($signed(s0))>((ctrl[2]?s6:s7)))&(((s4)>=(s7))>((u4)&(s6)))))))-(+(((-(-((3'sb001)^(5'sb01100))))|(3'sb010))^~((s6)>>((-((u6)>>(s7)))>>(s5)))));
  assign y6 = (((+((3'sb000)<<<(s3)))&((ctrl[4]?4'sb1001:((ctrl[3]?s0:(s1)>>>(s4)))-(5'sb00000))))+(((ctrl[4]?+(s0):(ctrl[2]?-($signed(2'b11)):s5)))>>(s3)))+(((((s2)|(($signed(u7))|((ctrl[2]?3'sb110:3'sb110))))^(-((ctrl[5]?$signed(s4):$signed(s5)))))<<(s5))|(((ctrl[0]?(s3)>>($signed((s0)&(s0))):((ctrl[5]?-(3'sb101):s4))-(($signed(u1))&(-(s5)))))^($signed($signed((ctrl[5]?(4'b0111)!=(5'b00100):{5'sb11011,s5,4'sb0111}))))));
  assign y7 = ($signed({-((+(($signed($signed(6'sb110010)))<<((s4)>>>($signed(s7)))))^~((ctrl[2]?((ctrl[3]?5'sb00011:(6'sb010100)&(s4)))<<<({4{$signed(6'sb011000)}}):1'sb1))),(((s1)>>>((-(u4))<<<(6'sb000101)))<<(!((u1)+(+({1{4'sb0000}})))))>>((ctrl[2]?(+(s4))>($signed(($signed(u6))^~((s6)<<<(4'b0101)))):s6)),(2'sb00)^(4'sb0011),u3}))^(3'b001);
endmodule
