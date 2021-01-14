module wideexpr_00090(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (($signed(4'b1001))^~((-($unsigned($signed((ctrl[6]?1'sb1:s0)))))&(((ctrl[7]?(+(s2))<<((u6)&(s6)):(ctrl[0]?5'sb11001:s6)))<<<(($signed($signed(s0)))^(((ctrl[2]?3'sb000:4'sb1100))<<(s4))))))|(((s4)<<(6'sb110001))&($signed(6'b011001)));
  assign y1 = {+({$signed((6'sb011000)<<(((2'b11)>(s5))|((ctrl[7]?4'sb0010:1'b1))))}),1'sb1,($unsigned((ctrl[0]?(ctrl[4]?($signed(s4))<<((u1)^~(u2)):+((3'sb100)>(s6))):1'sb0)))<=(&({4{(((4'sb1001)<<(s1))<<((s2)&(4'sb1100)))<<<(s1)}})),3'sb111};
  assign y2 = s0;
  assign y3 = u7;
  assign y4 = $signed(-(2'sb01));
  assign y5 = {4{$unsigned(u5)}};
  assign y6 = (((ctrl[2]?1'sb0:(ctrl[3]?(($signed(5'sb11000))>>>($signed(4'sb0000)))>>((!(s7))!=((1'sb1)<<<(1'sb0))):s5)))<<<((s0)>>(s6)))<<({(((ctrl[1]?(ctrl[4]?s1:(ctrl[6]?1'sb0:s5)):(ctrl[6]?(s1)>>>(s5):+(3'sb110))))<<($signed($signed((s2)>=(2'sb00)))))-(s2)});
  assign y7 = -(({4{(6'b110101)<<<($unsigned(3'b100))}})<<((4'sb0100)^(!(2'sb01))));
endmodule
