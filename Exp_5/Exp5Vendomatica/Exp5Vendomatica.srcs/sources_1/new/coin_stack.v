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

wire [3:0] action = {add,sub,reset};
wire fake_clk = add | sub | reset;
//reg [3:0] counter;
//wire sclk = counter[3];
initial begin
total <= init_number;
total_number <= total*value;
end

always@(posedge fake_clk)begin
  total <= (add == 1'b1)? total + 1:total;
  total <= (sub == 1'b1)? total - 1:total;
  total <= (reset == 1'b1)? init_number:total;
total_number <= total*value;
end

endmodule // coin_stack