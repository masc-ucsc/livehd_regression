module wideexpr_00078(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 5'sb00111;
  assign y1 = {-(($signed(+((ctrl[0]?$signed($signed(s6)):((4'sb1011)<<(s2))>=({1{6'b110101}})))))<<<($signed((ctrl[2]?(ctrl[1]?(s0)&($signed(5'sb00110)):((3'sb001)>>>(3'b100))+(s0)):-($unsigned((5'sb01110)|(4'sb0101))))))),3'sb010,{3{+($signed(($signed($signed((2'sb00)+(s4))))^((ctrl[5]?s2:(ctrl[6]?6'sb000010:s0)))))}}};
  assign y2 = $signed(4'sb0100);
  assign y3 = ({{4{(3'sb000)^~((6'sb000100)<<(2'sb01))}}})>>($signed(6'sb010010));
  assign y4 = $signed((((ctrl[4]?s2:s5))<<<($signed(((ctrl[5]?2'sb01:(-(s3))>>({5'b01010,2'sb10})))>(((2'sb00)>>(2'sb00))-((1'sb0)>>(u7))))))-(-(({(((4'sb1100)^~(s0))+($signed(s5)))>>>(($unsigned(1'b0))<<<((ctrl[2]?4'sb1110:s7))),u3})<<((ctrl[7]?2'sb00:s2)))));
  assign y5 = ((-($signed((ctrl[0]?5'sb11101:(s0)&((ctrl[0]?s5:s2))))))&(s2))&(+(1'sb1));
  assign y6 = s1;
  assign y7 = ~(2'sb00);
endmodule
