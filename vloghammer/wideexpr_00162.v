module wideexpr_00162(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed(s2);
  assign y1 = +({2'b00,$signed({2{((5'sb00111)&(-(6'sb000000)))<<(s5)}}),3'sb000,(s4)<<<(s4)});
  assign y2 = (1'sb1)-(($signed(1'sb1))|(+((ctrl[5]?6'sb111011:(ctrl[5]?s0:4'sb1100)))));
  assign y3 = 3'sb000;
  assign y4 = -((s2)>($signed((4'b0000)&({4{s5}}))));
  assign y5 = (+(4'sb0101))&($signed($unsigned(s3)));
  assign y6 = (ctrl[2]?($unsigned({s3,-((ctrl[0]?3'sb110:((ctrl[3]?1'sb0:2'sb00))<<({1{2'sb00}}))),(ctrl[5]?+(($signed(1'sb0))-((u0)^(s5))):$signed(((s1)^~(s1))+(-(s6))))}))>>(s6):&({4{(s3)&(-((((s5)>>>(1'sb1))^(-(2'sb01)))|($signed($unsigned(3'sb111)))))}}));
  assign y7 = (ctrl[0]?$signed((-(+((1'sb1)|($signed(s7)))))==($signed((ctrl[4]?{4{(ctrl[3]?((ctrl[2]?s5:s5))&((s4)|(3'sb101)):$signed((2'sb01)>>(s5)))}}:{u3})))):$signed(+((u0)^((s7)<<({4{3'b010}})))));
endmodule
