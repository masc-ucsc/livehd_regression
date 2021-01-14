module wideexpr_00495(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((((ctrl[7]?s2:(({$signed((2'b00)<<<(s6)),$signed($signed(4'b1001)),{(3'sb000)^~(1'sb1)}})^~(5'b01101))<<({$signed(+(+(s5))),$signed((ctrl[5]?$signed(5'sb00000):(ctrl[2]?s5:s4))),s1})))<(2'b01))<<<(((s6)<<<(3'sb110))-({2{$unsigned(~^((5'sb00010)>>>(3'sb101)))}})))>>((2'sb01)<(($signed(5'b01001))<<<({2{(ctrl[5]?(ctrl[6]?s7:4'sb0010):(ctrl[6]?+(|((1'b1)==(3'sb111))):(ctrl[7]?s7:(2'sb00)<<<($signed(s1)))))}})));
  assign y1 = {1{$signed(($signed((~&({~(u4),$unsigned(3'sb001),^(s3),s4}))^({3{$signed($signed(u1))}})))+(((ctrl[5]?s6:(5'sb11110)-(-(s0))))|(5'sb00101)))}};
  assign y2 = (ctrl[7]?$signed(({!($signed(s3)),4'sb1110,$signed(5'sb00010),(ctrl[1]?(ctrl[0]?{-(1'sb0),(2'sb10)!=(4'sb0100),{3{2'sb11}},~&(1'sb1)}:$signed({4{3'b100}})):~&((+(5'sb00100))>>(6'sb111000)))})<<(((-(+((3'sb111)+(5'sb00111))))+(((ctrl[6]?(1'sb1)>>>(u2):(s4)^(s4)))-($signed($signed(3'sb001)))))<<<($unsigned(s0)))):((((ctrl[5]?$signed((ctrl[6]?+(6'sb111111):-(6'sb110011))):((s1)+((ctrl[7]?s3:s0)))>>(-(3'b111))))>>(5'b00111))-((+($signed((s5)&(-(2'sb00)))))-(+(+((ctrl[0]?(s4)^(1'sb1):+(s2)))))))|(((ctrl[3]?($signed(($unsigned(s2))|((6'b110110)>>(s5))))<<<(&(u6)):s2))<<(($signed({1{{~&(s1),(1'sb0)<<(5'sb01101),(6'sb010011)+(s3),(1'sb0)^~(4'sb1000)}}}))^({2{(3'sb000)>=(6'sb010001)}}))));
  assign y3 = (((u6)!=(4'sb0000))&(~|(^(&((ctrl[0]?-(s3):(-(3'b101))|(s7)))))))>>>(-(u3));
  assign y4 = s0;
  assign y5 = $signed(s1);
  assign y6 = s1;
  assign y7 = {4{(~(($signed(5'b11110))<=((u1)<<<(1'sb0))))>>((ctrl[4]?$unsigned((ctrl[2]?u5:1'b1)):s5))}};
endmodule
