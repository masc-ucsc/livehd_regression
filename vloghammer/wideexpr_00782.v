module wideexpr_00782(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[3]?s4:(+({2'sb01,5'sb01000}))<<<(((ctrl[6]?s1:s1))>>($signed(3'sb111)))))|(($signed(((2'b11)<<<(2'b10))>>>((6'sb100001)<<(s1))))+($signed((ctrl[6]?(6'sb100010)^~(6'sb100111):(4'sb1100)>>>(5'b00111)))));
  assign y1 = (ctrl[6]?$signed((ctrl[1]?(s3)^($unsigned(s1)):3'sb111)):1'sb1);
  assign y2 = 1'sb1;
  assign y3 = ($signed((({4{&((ctrl[1]?u1:u0))}})^($unsigned(u7)))<<<(s5)))>>>($unsigned(5'sb10010));
  assign y4 = ($signed((3'sb001)&(-(s5))))<<<({1{s2}});
  assign y5 = 1'b1;
  assign y6 = ((((-(&((3'sb111)^(s3))))|(s5))<=(+(((ctrl[2]?(ctrl[0]?4'sb1101:s1):(s4)^~(3'sb101)))-(s5))))>($signed(3'sb010)))>(&((ctrl[5]?{s0}:~^($signed(6'b001011)))));
  assign y7 = ($signed(({2{-($signed((((s7)-(s0))&(-(5'sb00111)))|((1'sb0)<<<(s2))))}})<<({3{(u4)>((&(s7))>>>(3'sb011))}})))>>>((s5)^((((s6)+(+({1'sb1,({u0,4'b1010})>=($signed(3'b110)),+($unsigned(2'sb10))})))|(((ctrl[4]?(ctrl[6]?s0:$signed((s6)>>(5'b11111))):-(((1'sb0)&(1'sb1))>>>(+(3'sb001)))))<<<(-((1'sb1)>=(s6)))))^~(((ctrl[4]?(((ctrl[1]?(5'sb01011)-(6'sb110111):(ctrl[0]?s0:1'sb0)))<<<($signed(4'sb1010)))>>((((5'b10001)>>(2'b01))<<(+(4'b0111)))==(~|(!(s6)))):(((4'sb1111)<<((2'sb11)>>>(6'b010010)))<<<(2'b01))^~((+(3'sb110))-((ctrl[4]?s3:$signed(s1))))))<<((ctrl[3]?(1'b1)-(s6):(&((ctrl[0]?-(3'b110):{s2,4'sb0110,4'b1001})))>((ctrl[6]?{s4,4'sb0101}:(ctrl[3]?|(s5):s6))))))));
endmodule
