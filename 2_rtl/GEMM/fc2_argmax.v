`timescale 1ns/1ps
// Ten-way signed argmax. Ties retain the lower class index.
module fc2_argmax #(
    parameter ACC_W = 40,
    parameter CLASS_NUM = 10
)(
    input  wire                              clk,
    input  wire                              rst_n,
    input  wire                              start,
    input  wire [CLASS_NUM*ACC_W-1:0]        logits_flat,
    output reg  [3:0]                        digit,
    output reg                               done,
    output reg                               busy
);

    reg [3:0] index;
    reg signed [ACC_W-1:0] max_value;
    wire signed [ACC_W-1:0] current_value = logits_flat[index*ACC_W +: ACC_W];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            index <= 0;
            digit <= 0;
            max_value <= 0;
            done <= 1'b0;
            busy <= 1'b0;
        end else begin
            done <= 1'b0;
            if (start && !busy) begin
                index <= 4'd1;
                digit <= 0;
                max_value <= $signed(logits_flat[0 +: ACC_W]);
                busy <= 1'b1;
            end else if (busy) begin
                if ($signed(current_value) > $signed(max_value)) begin
                    max_value <= current_value;
                    digit <= index;
                end
                if (index == CLASS_NUM - 1) begin
                    busy <= 1'b0;
                    done <= 1'b1;
                    index <= 0;
                end else begin
                    index <= index + 1'b1;
                end
            end
        end
    end

endmodule
