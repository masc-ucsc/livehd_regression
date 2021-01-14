module wideexpr_00741(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((({3{$signed(s0)}})!=(($unsigned((ctrl[1]?s6:+(1'sb1))))>((s7)-($unsigned(4'sb1111)))))<<<({$signed(+(-((2'sb01)>>>(6'sb001110)))),{s0,($unsigned((4'sb0000)>>(4'sb1111)))>>>(s5)}}))|(6'b000101);
  assign y1 = (ctrl[0]?+($unsigned(6'sb110000)):4'sb1010);
  assign y2 = 1'sb0;
  assign y3 = (ctrl[7]?({(s2)>>>({2{(1'sb0)|(s6)}}),{1{s2}},({3{(ctrl[0]?2'b11:5'b00110)}})==(+($signed(4'sb1101))),({3{+(s5)}})>>((ctrl[3]?(4'sb1011)>>(2'sb10):(3'sb000)-(5'sb01100)))})<<((s5)|($signed(((s3)>>>(3'sb100))<<<(1'sb0)))):{1{$signed((((ctrl[6]?s0:s5))>=(-(s7)))<<((+(u2))|($signed(s5))))}});
  assign y4 = ((u3)<<<((ctrl[4]?($signed({1{6'sb000111}}))==(((ctrl[6]?s7:1'sb1))>>>((ctrl[7]?s1:s0))):2'sb11)))&((2'sb10)^(((((ctrl[4]?s6:s1))<=((s2)|(s3)))>>>({4{u6}}))>(($signed(s4))<<(+((s4)+(5'b01111))))));
  assign y5 = -(&(({4{(ctrl[0]?s4:6'sb110110)}})-(({4{s4}})>>(6'b101010))));
  assign y6 = $signed(((!(1'sb1))>({2{~&(u3)}}))<<<(s7));
  assign y7 = (ctrl[7]?{2{{($signed(({2{2'sb11}})>>(((5'b01011)<<<(2'b01))&({3{s2}}))))+(3'sb100),($signed(3'sb111))<<<(-(s5)),-(6'sb000010)}}}:((((~({$signed(s4),$signed(s5)}))>>(s2))>>>(3'sb010))>=($signed($signed({(u3)<<<({5'b11111,1'sb1,1'sb1}),$unsigned({1'sb0,s5,s4,u5}),((s2)<<<(1'b1))<<<((ctrl[7]?4'sb1100:s0))}))))^~(s3));
endmodule
