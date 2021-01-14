module wideexpr_00972(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[7]?$signed((-(^((ctrl[7]?s2:3'sb110))))+(6'sb100010)):5'sb01001);
  assign y1 = {{(((6'sb110101)-(s4))<<(+((ctrl[0]?!($signed((ctrl[7]?5'sb00011:s7))):5'sb01010))))>>((ctrl[6]?{1{(-(-((u5)<<<(4'b1000))))|($signed(2'sb01))}}:(((+((1'b0)|(1'sb0)))!=(-($signed(5'sb11011))))&((((u0)!=(6'b000001))<=((ctrl[5]?s0:s0)))>>($unsigned((2'sb00)|(2'sb10)))))<=((4'sb1100)!=((ctrl[2]?((s6)>>(s0))-(~&(4'sb0011)):(s2)<<<(4'b1000)))))),$signed(($signed((3'b110)<<<(u3)))>>(5'sb01000)),(ctrl[1]?(ctrl[3]?5'sb10010:{$signed({s7,(+(u7))>>($signed(1'sb0)),5'sb01010}),((1'sb0)<<<(-(-(3'sb101))))-(s5),5'sb11001,(~(((s6)-(s3))<<<(s3)))<<<(s7)}):~(3'sb111))},|(((ctrl[0]?(ctrl[1]?((ctrl[7]?$signed(+(5'sb11010)):$signed({s1,u6,s1})))<<<((((s1)>(2'b10))^(5'b01011))|(s5)):$signed(s0)):$signed((ctrl[4]?-($signed(s3)):(ctrl[5]?-((s5)<<<(u0)):(+(s0))&((2'sb00)|(1'sb1)))))))>>((ctrl[5]?1'sb0:$signed((u5)>=((($signed(4'sb1000))>>((s2)^(s0)))>=((ctrl[1]?$signed(u6):s7))))))),u4};
  assign y2 = !({5'sb11011,1'b1,+((((!(6'sb000011))<<(-(s4)))-({1{(s0)+(6'sb011000)}}))<<<(((3'sb000)>>((ctrl[4]?u6:3'sb110)))!=(({3{5'sb11010}})<<<((2'b11)<(2'b10))))),-($signed({2{(5'sb00111)>>>(-(s3))}}))});
  assign y3 = (4'sb1111)<<<(6'b100100);
  assign y4 = 1'sb1;
  assign y5 = ({^((s4)&(s4)),(ctrl[4]?-((-((ctrl[4]?(ctrl[4]?s5:4'sb1111):(s0)-(3'sb000))))<<(~&(5'sb10110))):s2),3'sb100,s2})^~({-(!(1'b0)),{(s3)>>>({2{(5'b11111)|({(2'sb01)>>>(s6),s7,(1'sb0)>>(4'sb0011)})}}),$signed((ctrl[4]?(3'sb011)^~(3'sb111):(5'sb11111)>>((s2)>>>((s4)<=(5'b11101)))))},(5'sb01011)<<(($signed(1'sb0))^(3'sb000))});
  assign y6 = +(({$unsigned(|(($signed(6'b010000))&((s7)<<<(4'sb0110)))),s7,s7})<<((ctrl[3]?(s5)>>((((4'sb1111)>>>(s6))-((ctrl[7]?3'sb001:s2)))^(((s5)^(s0))^~((3'sb000)|(6'sb001110)))):-((ctrl[4]?({u5,2'sb11,2'sb10,s7})+(5'sb10100):{2{$signed(s4)}})))));
  assign y7 = {($signed($unsigned(u3)))!=((((5'sb00001)<<(({!((u6)^~(1'b1)),((2'sb10)&(s6))<(+(s0)),((ctrl[3]?3'sb010:u6))>>>((6'sb000101)+(u7))})>>>($signed(-(s1)))))+($signed(s1)))<<<(-(^(+((ctrl[2]?(ctrl[6]?(ctrl[7]?s4:s0):1'sb1):(3'sb010)&(-(s4))))))))};
endmodule
