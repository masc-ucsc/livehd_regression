module wideexpr_00570(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((({((5'sb00101)>>>(6'sb010010))>>((ctrl[2]?6'sb101010:3'sb111))})+((^((6'sb111110)-(s3)))<=({(s6)<=(u3),(2'b11)>>>(u2)})))>({4{($signed($signed(u6)))>>((ctrl[4]?(5'sb10110)<<<(u6):s4))}}))<<(-(s0));
  assign y1 = 1'b1;
  assign y2 = 5'sb10110;
  assign y3 = $signed((ctrl[7]?$unsigned(($signed({u5}))|({3'sb011,(u4)>>>(4'sb1100),s6})):((~&((4'sb1010)^(5'sb11101)))^(2'b10))|($signed((+(2'b10))<<<((3'sb111)<<(1'sb1))))));
  assign y4 = 1'sb0;
  assign y5 = (s0)<<<((|((($signed(2'sb01))&(+(5'sb01000)))-((ctrl[5]?-(s1):-(4'b0100)))))&(($signed(($signed(6'sb101101))>(4'sb0101)))==(5'sb11011)));
  assign y6 = {(s7)+(((((($signed(5'sb11011))>>>(3'sb110))+((6'sb000111)>>>((3'sb011)<((4'sb1111)+(3'sb100)))))-(s5))^(+(+((ctrl[5]?$signed((ctrl[3]?3'b011:u1)):$signed((s6)+(s2)))))))<<(2'sb01))};
  assign y7 = {{3{s5}},(5'sb01111)<<<($signed((s5)<=((s5)>>(s3)))),{3{(ctrl[4]?s5:4'sb1101)}},u3};
endmodule
