module wideexpr_00533(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u1;
  assign y1 = $signed(~&($unsigned((ctrl[3]?s1:(3'sb111)^~(s2)))));
  assign y2 = $unsigned({1{(s3)<<(4'b1111)}});
  assign y3 = s2;
  assign y4 = ($signed($signed((+((ctrl[3]?(s0)>(s1):+(s2))))^~(s5))))<<<(({{2{(ctrl[2]?$unsigned((s3)^~(6'sb101101)):u6)}},5'sb10010})&(~^((-($signed($signed(s1))))<<(+((-(4'sb1101))|((s1)<<(1'b1)))))));
  assign y5 = (ctrl[6]?{s4,((-((s2)<<(2'sb10)))>>((ctrl[1]?$signed(u6):s7)))+(3'sb101)}:{3{(ctrl[0]?(ctrl[2]?{{1'b0,5'sb01101,6'sb100010,4'sb0101}}:{(s6)<=(s6),s5}):(u0)!=(!($signed(6'sb101011))))}});
  assign y6 = {((ctrl[6]?s7:-((5'sb00010)<<<(3'sb011))))<<((s5)>>>((1'sb1)<<((4'sb0100)^(1'sb0)))),6'sb100110,u2};
  assign y7 = (ctrl[1]?s2:s5);
endmodule
