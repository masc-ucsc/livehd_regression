module wideexpr_00929(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = -({(s1)<<<({3{$signed((ctrl[4]?$signed((s2)<<<(s7)):{(2'sb11)>>(6'sb001001),(4'b0110)+(s1),(s7)-(1'sb0),(3'b110)<<<(5'sb01001)}))}})});
  assign y1 = $signed({(ctrl[2]?$signed(s5):5'sb11110),~|((ctrl[7]?5'b11000:!(((5'b00101)&(s0))!=((ctrl[6]?(ctrl[2]?3'sb000:6'b001111):!(u7)))))),($signed(s5))^($signed({2{u4}})),s3});
  assign y2 = (ctrl[7]?(s5)+(s2):s7);
  assign y3 = ((ctrl[2]?((5'sb00011)>>($signed(6'sb110010)))<<<(((ctrl[4]?3'sb000:u4))>>>((ctrl[5]?s1:4'sb0100))):s3))<<(({1{($signed(2'sb10))>>>((ctrl[0]?s3:s1))}})>>((ctrl[1]?s3:+((s2)|(2'sb10)))));
  assign y4 = ((2'sb11)+((s5)<<((((((ctrl[4]?-(6'b101000):s1))-(3'sb010))>>>(4'sb0000))&(-(($signed(2'b00))<<(+(u1)))))^((+((($unsigned(4'sb1100))>>>($signed(u4)))-(&((ctrl[5]?s1:s4)))))>>(2'sb11)))))<(s3);
  assign y5 = ((ctrl[4]?-($signed(5'sb11011)):(2'sb11)<<<(((-(s7))>>>($signed((ctrl[4]?(s4)-(s2):(s6)^(s4)))))&(+(s5)))))>>((ctrl[4]?$signed(-($unsigned({2{{2{(3'sb011)^(s4)}}}}))):(+($signed({1{u3}})))>>(s7)));
  assign y6 = 2'b01;
  assign y7 = s7;
endmodule
