module wideexpr_00629(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (($unsigned(|((ctrl[2]?|((s1)^~((1'sb1)<<<(s0))):{4{(4'sb1010)<({u4})}}))))>>>(-(s7)))<=({+($signed((ctrl[7]?{3{s0}}:{$signed(4'sb1111),3'sb111,$signed((ctrl[4]?5'sb00110:4'sb1110))})))});
  assign y1 = 4'sb1010;
  assign y2 = 6'sb110001;
  assign y3 = !(u3);
  assign y4 = $signed($unsigned(2'b00));
  assign y5 = $unsigned(s1);
  assign y6 = 4'sb0011;
  assign y7 = {((ctrl[3]?(ctrl[5]?3'sb011:$signed((ctrl[7]?{4{$unsigned(6'b111010)}}:~|(2'sb11)))):((ctrl[1]?-(({4{s1}})<<((s4)<<<(s3))):s6))|(s4)))<<<((ctrl[3]?^(~^(2'sb00)):!({3'sb100,u5,(((ctrl[5]?6'sb101111:3'sb001))==(-(s6)))<(u2)})))};
endmodule
