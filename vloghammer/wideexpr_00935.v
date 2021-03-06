module wideexpr_00935(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ~|(5'sb01011);
  assign y1 = $signed($signed(s0));
  assign y2 = +((+(((((ctrl[0]?s0:s5))-($signed(2'b10)))<<<((ctrl[4]?(2'b00)<(s3):(3'sb110)+(2'b01))))>>>(-(s3))))>>($signed(s4)));
  assign y3 = ((ctrl[7]?6'sb000101:(((ctrl[7]?5'sb00011:{4'sb1111,3'sb100,6'sb010011}))^~((u0)<<<((ctrl[6]?5'sb11010:4'sb1111))))&(($unsigned({2{s5}}))>>>($signed(s5)))))>>(-(+(s7)));
  assign y4 = ((s1)<<(-((-(s5))<<((3'sb100)==(s5)))))^(((s3)^((-(4'b1000))-(4'sb0010)))<<<((((ctrl[5]?s1:s4))|(s5))+((ctrl[2]?$signed(s3):$signed(4'sb1010)))));
  assign y5 = ((4'sb1100)>>(u7))+((ctrl[2]?1'sb1:(1'sb1)<<((4'sb1111)<=(-($signed((+({3{5'sb11111}}))&(s3)))))));
  assign y6 = s0;
  assign y7 = +(s7);
endmodule
