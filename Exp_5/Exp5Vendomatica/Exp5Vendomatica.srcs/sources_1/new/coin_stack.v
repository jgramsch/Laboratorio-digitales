module coin_stack(
    //input clk,
    input add,
    input sub,
    input [13:0] value,
    input reset,
    input [9:0] init_number,
    output reg [9:0] total,
    output reg [15:0] total_number
);

wire [2:0] action;// = {add,sub,reset};
wire fake_clk = add | sub | reset;
//reg [3:0] counter;
//wire sclk = counter[3];
assign action[0] = add;
assign action[1] = sub;
assign action[2] = reset;
initial begin
total = init_number;
total_number = total*value;
end

always@(posedge fake_clk)begin
  case (action)
  3'b100:total =total + 1;
  3'b010:total =total - 1;
  3'b001:total =init_number;
  default: total = total;
  endcase
//  total = (add)? total + 1:total;
//  total = (sub)? total - 1:total;
//  total = (reset)? init_number:total;
total_number = total*value;
end

endmodule // coin_stack