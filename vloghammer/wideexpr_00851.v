module wideexpr_00851(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y1 = (ctrl[3]?({2{1'sb1}})>(({4{~&(((ctrl[1]?u6:u7))<<($signed(2'b10)))}})<<($signed(s4))):{(1'sb0)^(s3)});
  assign y2 = (s5)-(-(5'sb01110));
  assign y3 = ((({3{(ctrl[1]?$signed((((s4)!=(s7))&($unsigned(2'sb01)))>=({(s5)>>(5'sb11000)})):-({s1}))}})>>>((~^((-(+((ctrl[0]?6'b011101:s7))))<((-($signed(u0)))<<(2'sb11))))^(4'b1100)))-(|(((ctrl[7]?((ctrl[7]?$signed({2{u1}}):s4))-(((s7)|(+(3'sb111)))^~(((ctrl[1]?3'sb101:4'sb1010))<<<(~^(5'b11000)))):(ctrl[3]?$signed($signed((ctrl[5]?s5:6'sb100011))):((4'sb1010)+((2'sb01)&(s3)))^(1'sb0))))^~(s4))))<<({{$signed(s5),$signed(~|($unsigned(u2))),(~&($signed(($signed((ctrl[6]?6'b101001:3'b110)))^~(((s7)&(s3))&((3'sb010)>>(u6))))))|(2'sb00)}});
  assign y4 = (ctrl[4]?$signed(1'b0):(s7)^(((s7)+((ctrl[2]?s1:-(2'sb00))))>>>((4'sb1111)<=(s0))));
  assign y5 = u5;
  assign y6 = s7;
  assign y7 = +(($signed(-(5'sb00000)))^~(s4));
endmodule
