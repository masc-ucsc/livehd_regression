module wideexpr_00973(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[0]?(-(6'b010100))<<<((((ctrl[2]?{s2}:s1))<=($unsigned(((s0)-(s7))<(4'sb0101))))<<<((ctrl[3]?1'sb0:s1))):(((s1)>>(s6))<<({(($signed(s3))^(2'sb00))!=(((ctrl[5]?3'sb110:s2))>>(s0)),(((1'sb1)>>>(s3))>>(-(6'b111110)))>=(3'sb101),3'sb100}))^((ctrl[5]?6'sb010110:5'sb00101)));
  assign y1 = (1'b0)<((4'sb1011)<(+((3'sb110)<<((s4)<<(4'sb0100)))));
  assign y2 = u3;
  assign y3 = $signed((s2)|(3'sb001));
  assign y4 = +((ctrl[2]?((-($signed(4'sb0011)))|((1'sb1)<<((2'b00)^(~|((ctrl[2]?4'sb0000:s7))))))|(+((ctrl[7]?($signed((s0)>>(2'sb11)))>>>(6'sb011001):(((ctrl[2]?2'sb11:s1))+($signed(u3)))<<(($signed(3'sb110))<<((3'b110)<<<(3'sb000)))))):+((ctrl[4]?(ctrl[7]?($signed((u3)^(u4)))^((ctrl[5]?s6:(4'sb1011)>>>(s5))):s2):$signed(((~(1'sb0))<<<((ctrl[4]?1'sb1:s7)))^($unsigned((ctrl[4]?s1:s0))))))));
  assign y5 = ((ctrl[7]?+(~(s0)):s0))&(6'sb111110);
  assign y6 = (4'sb0110)>((ctrl[5]?($signed(6'sb100110))|((ctrl[4]?(5'sb11100)<<(2'sb00):4'sb0011)):3'sb001));
  assign y7 = $signed($signed(+(((($signed(1'sb0))&((s5)<<(2'sb11)))>=($signed(+(((ctrl[2]?2'sb00:s5))&((ctrl[6]?s5:2'sb10))))))>>((2'b10)>>>($signed((ctrl[6]?(5'sb11101)<(+(1'b0)):(|(6'sb011100))==(6'sb000011))))))));
endmodule
