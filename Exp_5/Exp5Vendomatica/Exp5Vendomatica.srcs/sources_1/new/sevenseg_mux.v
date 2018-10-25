module sevenseg_mux(
    input btn,
    input conf,
    input ch_mode,
    input [15:0] num_1,
    input [15:0] num_2,
    input [15:0] num_3,
    input [15:0] num_4,
    input [15:0] num_5,
    input [15:0] num_6,
    input [15:0] num_7,
    input [15:0] num_8,
    output reg [15:0] num_out
    );
    reg [2:0] counter;
    wire [3:0] mode = {conf,ch_mode};
    always@(posedge btn)begin
    case(mode)
        0:num_out <= num_1;
        1:num_out <= num_2;
        2:num_out <= num_3;
        3:num_out <= num_4;
        4:num_out <= num_5;
        5:num_out <= num_6;
        6:num_out <= num_7;
        7:num_out <= num_8;
    endcase
    end
endmodule