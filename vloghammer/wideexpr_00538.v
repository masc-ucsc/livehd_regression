module wideexpr_00538(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s1;
  assign y1 = ((((s2)>>>((ctrl[4]?s3:3'sb111)))==((ctrl[1]?$signed((ctrl[7]?({(6'sb001010)+(3'sb001),(3'b111)<=(1'sb1),(s0)<<(5'sb10111),u6})^~(u0):{(s0)>>>((ctrl[4]?5'sb01100:s3)),(ctrl[3]?(ctrl[3]?s5:1'sb0):6'sb010010)})):((s1)>>(&((ctrl[5]?(2'sb11)>>>(6'sb010100):(s4)>>(s6)))))^((s4)^~((ctrl[7]?s0:(ctrl[6]?$signed(6'sb110001):$signed(s4))))))))>>>(($signed((5'sb01110)<((ctrl[5]?(ctrl[0]?$signed((ctrl[3]?3'b011:u0)):s5):3'sb111))))>>(s1)))|({(+(((&({(ctrl[5]?3'sb111:4'sb1100)}))>>((ctrl[6]?4'sb0010:+($signed(s6)))))<<((~({(2'sb10)^(s5),~&(1'b1),{4{1'b1}},(ctrl[0]?4'sb1110:s2)}))+(((s6)==(u6))<<($signed({4{s2}}))))))>>((2'sb11)>>>((ctrl[2]?$signed(3'sb101):(ctrl[1]?(s0)&(s0):+((2'sb00)>>((s7)|(5'sb10111))))))),-($signed(2'b10))});
  assign y2 = ((u7)>((s1)>>>($signed(s2))))^({2{-((ctrl[0]?{2'sb00,6'sb000011}:{s0,4'sb0011,s7}))}});
  assign y3 = ((1'b1)<<<(s7))^~(2'sb00);
  assign y4 = (s2)>>(^(-(+(((ctrl[7]?s4:2'b01))<<<(((4'sb0010)>>>(5'sb11111))<<<((ctrl[6]?1'sb1:4'b1101)))))));
  assign y5 = (+((ctrl[0]?s7:(ctrl[5]?$signed(2'sb00):$signed(s7)))))<<(-($signed(+((3'sb001)<<<(s2)))));
  assign y6 = ($signed(-(1'sb0)))>>((-((ctrl[5]?($signed((+(3'sb011))>=(s1)))<<(^(-($signed(s5)))):s1)))|($signed({(ctrl[7]?(((ctrl[3]?6'sb000111:s4))-(-(u7)))>((2'sb01)|((3'sb010)+(4'sb1111))):{1{-(!(6'b110100))}}),{2{(3'sb000)<=($signed({1'sb0,2'b01,1'sb0,5'sb11101}))}},(((3'sb100)|((ctrl[3]?5'sb10000:4'sb0001)))&((ctrl[1]?(s2)>>>(s3):s5)))>>($signed(3'sb000)),6'sb001100})));
  assign y7 = 2'b11;
endmodule
