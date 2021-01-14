module wideexpr_00563(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[5]?3'sb011:4'sb1110);
  assign y1 = $signed({(((s5)>>(^($unsigned(6'sb110101))))<<(~^(s7)))<<({1{{4{-(3'b110)}}}}),$signed(^($signed((ctrl[7]?(~|(u0))<(4'sb1010):((u5)==(u6))<<<((s7)<<(s6))))))});
  assign y2 = !($signed((+(3'sb110))<<<({^((2'sb11)>>(s5)),{!(1'sb1),(u4)>(s6),(ctrl[6]?5'sb01001:u3),(s6)<<(s7)},({3{1'sb1}})>>>((2'b10)>>>(5'sb01111)),4'sb0111})));
  assign y3 = $signed(-(s7));
  assign y4 = {6'sb101100,1'sb0};
  assign y5 = s3;
  assign y6 = {3{3'sb000}};
  assign y7 = (-(s2))&((ctrl[6]?(4'sb1011)<<((ctrl[4]?4'sb0001:-($signed((ctrl[4]?4'sb0000:(-(s6))>>((5'sb10110)^(4'sb0111))))))):s2));
endmodule
