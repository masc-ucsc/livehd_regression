module wideexpr_00278(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed((ctrl[5]?(ctrl[2]?s4:$signed(+(s6))):(ctrl[2]?4'sb0010:-($signed(s5)))));
  assign y1 = s6;
  assign y2 = $unsigned({3{6'b010010}});
  assign y3 = $unsigned(2'sb01);
  assign y4 = ((+($signed(u0)))-((ctrl[2]?((6'sb101001)^~(+(s6)))>>>(((ctrl[5]?6'sb111000:2'sb11))<=(-(u5))):$signed(s4))))|((ctrl[3]?((ctrl[6]?(+(s4))>>((s2)&(4'sb0000)):(ctrl[7]?(4'sb0100)^(5'sb01010):s6)))&(-($signed(6'b010011))):3'sb111));
  assign y5 = 2'sb00;
  assign y6 = 6'sb000111;
  assign y7 = |(((ctrl[2]?((ctrl[2]?(ctrl[3]?(ctrl[4]?(s1)^(u4):(2'sb11)!=(s7)):($signed(s3))&({5'b00010})):u7))-((ctrl[6]?(|(s6))&(5'b10110):{4{&({1'sb1,6'b001010,5'sb01001})}})):{(-((s3)>>(s5)))^~(2'sb01),{$unsigned(s1)},1'sb0,$unsigned(((ctrl[5]?$signed(1'sb0):~&(3'sb001)))>>((6'b111110)>>>(6'sb001010)))}))-({1'sb1,$signed((ctrl[5]?u4:{3{u6}})),4'b0110}));
endmodule
