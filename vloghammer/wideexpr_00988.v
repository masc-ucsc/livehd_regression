module wideexpr_00988(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 4'b0100;
  assign y1 = ((((ctrl[2]?-(-(2'b00)):4'sb0011))-(+($signed(6'b010100))))<<<(($signed(((s2)>>>(s6))>>((s6)<<(1'sb0))))>>((ctrl[0]?s6:{3{s3}}))))-(s7);
  assign y2 = (ctrl[0]?($signed(s0))&((($signed({3{(ctrl[1]?(u4)-(~(4'sb1100)):(ctrl[7]?(s3)<(s0):2'sb11))}}))^~($signed((u5)&((5'sb11000)&(!($signed(5'sb01101)))))))^($signed(((({(ctrl[1]?6'sb111100:1'sb0),(ctrl[4]?2'sb10:s7)})+($unsigned({3{s7}})))<=(2'b01))&({{2{(3'b011)^(u7)}},s4})))):1'sb1);
  assign y3 = ($signed(((s7)&(s0))>>>(6'sb110100)))<<((s6)<=((ctrl[0]?3'sb100:((ctrl[0]?+(+($signed((4'sb1001)^~(6'sb111000)))):(ctrl[0]?s1:+(((u2)<<<(u6))>>($unsigned(s1))))))>>>(5'sb00100))));
  assign y4 = {((ctrl[6]?4'sb1100:($signed(s7))<<(s4)))|($signed(s5)),(ctrl[6]?s2:6'sb101101),{5'sb00000,1'sb1,+($signed(6'sb000111))},{(ctrl[2]?{4{{(6'sb110101)>>(4'sb1010)}}}:2'sb01),~|($unsigned($unsigned(s5))),(s5)<<<(|((+($unsigned(({6'sb000010,u1,s7,s0})+((6'b101000)>(3'sb011)))))+((s3)>>((1'sb0)^~((+(s3))>>(5'sb00100)))))),(ctrl[4]?(4'sb0000)>>>(((+($signed(u1)))<<<(3'sb101))<<<({2{$unsigned((-(6'b110100))&(s4))}})):+((((3'sb001)-(((ctrl[2]?4'sb1011:3'sb110))<<(2'b01)))>>((ctrl[7]?(-(s5))^(s4):(ctrl[0]?-(s7):(s1)<<(5'b00010)))))<<($signed($unsigned(-((ctrl[2]?u6:2'b01)))))))}};
  assign y5 = ((s6)>>>(4'b1111))<((s6)<<(($signed(2'sb11))>>((ctrl[7]?u3:~(u3)))));
  assign y6 = ((6'b010101)+(({{((1'sb1)^(s3))<<(+(1'sb1))},(ctrl[7]?(+(6'sb000000))-(2'sb01):(ctrl[6]?+(s0):(s1)^~(2'sb01))),+(((s1)<<(5'sb10011))^((s0)>>(6'sb111001))),-(4'sb0100)})<<($unsigned(1'sb0))))>>(((ctrl[6]?(4'sb1111)<<(&((s3)+(s7))):5'sb00000))^~((+($unsigned($signed(+(1'sb0)))))|(4'sb0100)));
  assign y7 = $signed(-((ctrl[6]?{((ctrl[0]?$signed(1'sb0):(2'sb11)>>>($signed((1'sb0)>>(5'b01100)))))|(s0),6'b100100,s4}:(ctrl[2]?{3'sb010,$signed(-(($signed(s1))+($signed(2'sb01)))),$unsigned(s4),(((ctrl[7]?1'sb0:6'sb110110))+((ctrl[1]?5'sb01011:(1'sb0)+(2'sb00))))<((ctrl[6]?((ctrl[2]?5'sb01000:6'sb101001))^($signed(u4)):((s5)<<<(s5))-(s1)))}:$unsigned({{((5'sb00010)<<<(5'sb11110))^((s1)+(1'sb0)),-({s1,1'sb0,s0,4'sb1100})},{2{$signed((6'sb100011)>>>(4'sb1011))}},($signed((6'sb010011)+(6'sb010110)))<<<(($unsigned(6'sb111010))&((s4)<=(3'sb001)))})))));
endmodule
