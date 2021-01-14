module wideexpr_00032(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[4]?6'sb101110:($signed({^({1{u5}})}))&(s1)))>($signed(({(s6)!=($signed((s2)<<(s4))),$unsigned(1'sb1),(((3'sb111)-(s1))^((s6)|(s3)))>>((ctrl[6]?+(5'b00011):4'sb1100)),((ctrl[7]?(s2)^(s6):1'sb0))==(s1)})^(+(((ctrl[1]?s1:(ctrl[1]?s2:3'sb011)))<<(+(6'sb010001))))));
  assign y1 = (ctrl[1]?+(-((6'sb111011)>>>(4'sb1110))):(3'sb011)&((s0)>>(s0)));
  assign y2 = s5;
  assign y3 = (+((({4{$unsigned(-(3'b000))}})<<((ctrl[5]?6'b111100:(u7)>>>(u3))))>>(5'b00100)))^~((ctrl[2]?(ctrl[5]?+(($signed((ctrl[4]?s1:s0)))^((ctrl[3]?(s6)<<(u7):(ctrl[6]?s2:4'sb1010)))):((ctrl[2]?(5'sb00111)<<<({3{2'sb01}}):s6))-(((ctrl[4]?$signed(3'sb010):(s5)>>>(s5)))<<<((4'sb0000)-(5'sb10011)))):+((((ctrl[0]?$unsigned(u2):|(s0)))<=(s0))^~(3'sb001))));
  assign y4 = ($unsigned(2'sb11))<<<((($unsigned((-(6'sb000110))>>((ctrl[3]?3'sb011:s5))))<=(({2{{2{6'sb010011}}}})<=((u0)>({s0}))))>>>(s1));
  assign y5 = $signed(1'sb1);
  assign y6 = 5'b00001;
  assign y7 = -((ctrl[2]?s4:(s0)|($signed(+(5'b01101)))));
endmodule
