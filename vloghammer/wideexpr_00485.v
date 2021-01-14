module wideexpr_00485(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ($signed((ctrl[1]?(ctrl[7]?5'b01011:{$signed((1'sb1)>>(s2)),{(s2)&(4'sb1111),3'b100,(u7)^~(u4)}}):((ctrl[2]?4'sb0010:{(ctrl[6]?4'sb1000:1'sb0),(s4)>>(6'sb100101),3'sb110,2'sb10}))<<(s1))))|(+($signed($signed((ctrl[1]?$signed($signed(3'sb010)):2'sb11)))));
  assign y1 = ($signed($signed((-((ctrl[0]?(ctrl[2]?s5:(ctrl[4]?2'sb00:6'sb000000)):6'sb110000)))|(5'sb00000))))<<(((&((-($signed((u2)<<<(3'sb001))))<<({$unsigned(s3),$signed({2{4'sb1000}})})))>>>((ctrl[7]?s0:(((-(5'sb10011))<=($signed(s0)))>((ctrl[4]?{s6,2'sb10,4'b0110,s1}:{2{4'sb0010}})))-(((ctrl[2]?{3{u7}}:(3'b101)-(u1)))<<(-((1'sb1)>>(3'sb010)))))))+((ctrl[6]?$signed(($signed(($signed(5'sb10000))|((3'sb010)^~(s7))))>=((+((1'sb0)<<<(s4)))>>>((ctrl[1]?s3:1'sb1)))):$unsigned(-($signed($signed((s6)+(s6))))))));
  assign y2 = (((-(s2))+((+(s3))&((s5)-(((($signed(s6))<<((2'sb01)>>(3'sb001)))&(s1))>>>({(ctrl[7]?(4'sb1100)+(3'sb111):1'sb0),((2'sb11)|(s2))<<<({1{s0}})})))))<<(3'sb100))^~(((ctrl[7]?s7:(ctrl[1]?(((ctrl[5]?((s6)>>(6'sb001001))<<<(s7):4'sb1100))-(($signed((1'sb0)>>>(5'b00011)))^(-((ctrl[0]?s2:5'sb00111)))))|(6'sb001001):+({({$signed(2'sb11),+(3'sb100),-(3'b001),(1'sb0)|(5'b11010)})-((-(s7))<=(u5))}))))>>({2{(ctrl[1]?(3'b101)&(((ctrl[5]?{3{6'sb001110}}:(ctrl[5]?(ctrl[1]?3'sb110:u3):(6'sb110010)>(u2))))!=((ctrl[3]?(-(s7))<<<((ctrl[5]?1'sb0:1'sb1)):^((ctrl[3]?s6:s3))))):{4{$signed({2{{1{(6'sb100011)==(s4)}}}})}})}}));
  assign y3 = +(2'sb00);
  assign y4 = (ctrl[2]?-($signed(5'b10011)):s2);
  assign y5 = ((5'sb10100)&($signed({4{{s0,(s5)>((4'sb0110)>>>(+($signed(1'sb0)))),$unsigned($signed({3{(3'b011)<=(1'sb1)}}))}}})))<<<((ctrl[5]?{1{&(((((1'sb1)>>({u2,s5}))<<(((ctrl[6]?s4:s6))>>>((ctrl[7]?1'b1:1'b0))))&(($signed({s5,4'sb0101,4'sb0000}))>>>(s0)))^(s7))}}:((($signed(|(-((s5)&(1'sb1)))))>>>(({$signed((1'b1)<<(6'sb101110)),(ctrl[2]?(6'b110010)<<(6'sb111110):(ctrl[3]?u7:6'b101101)),(ctrl[7]?!(s0):{3{s4}})})>>((ctrl[4]?(ctrl[7]?(6'sb110110)^~(5'sb11001):s0):$signed({2{s1}})))))^~(((s4)<<((ctrl[7]?((s5)>>(5'sb00101))|((s4)^~(4'sb0011)):(-(s3))^((ctrl[7]?u1:2'sb00)))))>>(4'sb1001)))!=(+(s3))));
  assign y6 = 1'sb0;
  assign y7 = ({2'sb01})<<(s0);
endmodule
