module wideexpr_00925(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = +($signed(+((~^((ctrl[6]?(6'sb000011)-(s5):$unsigned(6'sb101010))))-(({2{s6}})!=(({4{6'sb011011}})^~((s3)-(6'sb110001)))))));
  assign y1 = (-(((((ctrl[3]?s3:+((ctrl[7]?{2'b11}:(4'sb1110)>>(s1)))))>>($signed(+((-(3'b101))^~((s6)>>>(s1))))))<<<($signed((+(((ctrl[0]?s0:3'sb001))<=((5'sb01010)|(s0))))>>($signed((u0)&({2{s1}}))))))==((ctrl[3]?6'sb101110:-($unsigned(((ctrl[3]?{4{2'sb00}}:{s3,u5,s4}))==({1{-(s6)}})))))))>>>(4'sb1010);
  assign y2 = $signed((s2)^~(s3));
  assign y3 = -((ctrl[5]?s2:(s2)>>($signed(s2))));
  assign y4 = $unsigned(s1);
  assign y5 = s7;
  assign y6 = (-(((ctrl[6]?$unsigned(6'b100100):(ctrl[7]?$signed(3'b011):s4)))+(u6)))>>(s5);
  assign y7 = 1'sb1;
endmodule
