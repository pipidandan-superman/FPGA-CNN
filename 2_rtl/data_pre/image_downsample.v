`timescale 1ns/1ps

module image_downsample #(
    parameter ROI_W = 112,
    parameter ROI_H = 112,
    parameter POOL_TH = 4
)(
    input  wire pclk,
    input  wire rst_n,
    input  wire bin_data,
    input  wire bin_valid,
    output reg  pool_data,
    output reg  pool_valid
);
    reg [6:0] roi_x_cnt;
    reg [6:0] roi_y_cnt;
    reg [ROI_W-1:0] line_buf_1;
    reg [ROI_W-1:0] line_buf_2;
    reg [ROI_W-1:0] line_buf_3;
    reg [3:0] row0_shift;
    reg [3:0] row1_shift;
    reg [3:0] row2_shift;
    reg [3:0] row3_shift;

    always @(posedge pclk or negedge rst_n) begin
        if (!rst_n) begin
            roi_x_cnt <= 0;
            roi_y_cnt <= 0;
        end else if (bin_valid) begin
            if (roi_x_cnt == ROI_W - 1) begin
                roi_x_cnt <= 0;
                roi_y_cnt <= (roi_y_cnt == ROI_H - 1) ? 0 : roi_y_cnt + 1'b1;
            end else begin
                roi_x_cnt <= roi_x_cnt + 1'b1;
            end
        end
    end

    always @(posedge pclk or negedge rst_n) begin
        if (!rst_n) begin
            line_buf_1 <= 0;
            line_buf_2 <= 0;
            line_buf_3 <= 0;
            row0_shift <= 0;
            row1_shift <= 0;
            row2_shift <= 0;
            row3_shift <= 0;
        end else if (bin_valid) begin
            line_buf_1 <= {line_buf_1[ROI_W-2:0], bin_data};
            line_buf_2 <= {line_buf_2[ROI_W-2:0], line_buf_1[ROI_W-1]};
            line_buf_3 <= {line_buf_3[ROI_W-2:0], line_buf_2[ROI_W-1]};
            row0_shift <= {row0_shift[2:0], bin_data};
            row1_shift <= {row1_shift[2:0], line_buf_1[ROI_W-1]};
            row2_shift <= {row2_shift[2:0], line_buf_2[ROI_W-1]};
            row3_shift <= {row3_shift[2:0], line_buf_3[ROI_W-1]};
        end
    end

    // Include the pixel presented in the trigger cycle. Using only the old
    // shift registers would mix in the preceding 4x4 block's boundary.
    wire [3:0] row0_window = {row0_shift[2:0], bin_data};
    wire [3:0] row1_window = {row1_shift[2:0], line_buf_1[ROI_W-1]};
    wire [3:0] row2_window = {row2_shift[2:0], line_buf_2[ROI_W-1]};
    wire [3:0] row3_window = {row3_shift[2:0], line_buf_3[ROI_W-1]};
    wire pool_trigger = bin_valid && (roi_x_cnt[1:0] == 2'b11) &&
                        (roi_y_cnt[1:0] == 2'b11);

    reg [4:0] sum_16;
    always @(*) begin
        sum_16 = row0_window[0] + row0_window[1] + row0_window[2] + row0_window[3] +
                 row1_window[0] + row1_window[1] + row1_window[2] + row1_window[3] +
                 row2_window[0] + row2_window[1] + row2_window[2] + row2_window[3] +
                 row3_window[0] + row3_window[1] + row3_window[2] + row3_window[3];
    end

    always @(posedge pclk or negedge rst_n) begin
        if (!rst_n) begin
            pool_valid <= 1'b0;
            pool_data <= 1'b0;
        end else begin
            pool_valid <= pool_trigger;
            if (pool_trigger)
                pool_data <= (sum_16 >= POOL_TH);
        end
    end
endmodule
