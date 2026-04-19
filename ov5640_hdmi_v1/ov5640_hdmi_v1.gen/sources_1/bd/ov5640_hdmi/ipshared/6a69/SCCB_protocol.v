//sccb 读数据
module sccb_protocol
#(
    parameter DEV_write = 8'h78,
    parameter DEV_read  = 8'h79,
    parameter CLK_DIV   = 'D500	//100Khz
)
(
    input        sys_clk    		,
    input        sys_rst_n  		,
			
	//W-R CTRL		
	input [15:0] reg_addr   		,//OV5640寄存器地址
			
    input        write_en   		,
	input  [7:0] write_byte			,//write_number cnt (byte)
    input  [7:0] write_data 		,
	output       write_done 		,
			
	input        read_en    		,
    output [7:0] read_data  		,
    output       read_done  		,
			
	//SCCB interface		
    output reg      sccb_clk   		,
    inout        sccb_sda			,
	output reg		 sccb_cfg_done
);
localparam IDLE     	= 4'd0,
           STA_1    	= 4'd1,
           DEV_W    	= 4'd2,
           REG_ADDR 	= 4'd3,
           WR_DATA  	= 4'd4,
           STA_2    	= 4'd5,
           DEV_R    	= 4'd6,
           RD_DATA  	= 4'd7,
           STOP_1      	= 4'd8,
		   STOP_2      	= 4'd9;//数据包间隔：1.5us
localparam DELAY		= 75;//1.5US
//计数器分段
localparam MID_DELAY = CLK_DIV>>1;
localparam Q_DELAY   = CLK_DIV>>2;

reg [3:0] state,next_state;
reg [15:0] cnt_clk;
reg [4:0] cnt_bit;  
reg [7:0] w_byte_cnt; //写一个寄存器加1
reg [7:0] cnt_delay;

reg wr_flag,rd_flag;

/*三态门*/
reg sda_out;
wire sda_in;
wire sda_en;
assign sccb_sda = (sda_en)?'bz:sda_out;
assign sda_in = sccb_sda;
assign sda_en = (state == RD_DATA && cnt_bit < 8)?1:0;
always@(posedge sys_clk)
    if(!sys_rst_n)
        cnt_delay <= 0;
    else if(state == STOP_2)begin
        if(cnt_delay == DELAY-1)
            cnt_delay <= 0;
        else
            cnt_delay <= cnt_delay+1;
    end
    else
        cnt_delay <= 0;
//读写使能控制-可省略
always@(posedge sys_clk)
    if(!sys_rst_n)
        wr_flag <= 0;
    else if(write_en)
        wr_flag <= 1;
    else if(state == STOP_1)
        wr_flag <= 0;
    else
        wr_flag <= wr_flag;
always@(posedge sys_clk)
    if(!sys_rst_n)
        rd_flag <= 0;
    else if(read_en)
        rd_flag <= 1;
    else if(state == STOP_1)
        rd_flag <= 0;
    else
        rd_flag <= rd_flag;
		
//状态机
always@(posedge sys_clk)
    if(!sys_rst_n)
        state <= IDLE;
    else
        state <= next_state;
always@(*)
    case(state)
    IDLE    :if(write_en || read_en)
                next_state = STA_1;
            else
                next_state = state;
    STA_1   :if(cnt_clk == CLK_DIV-1)
                next_state = DEV_W;
            else
                next_state = state;
    DEV_W   :if(cnt_clk == CLK_DIV-1 && cnt_bit == 8)
                next_state = REG_ADDR;
            else
                next_state = state;
    REG_ADDR:if(cnt_clk == CLK_DIV-1 && cnt_bit == 16)
                if(wr_flag)
                    next_state = WR_DATA;
                else if(rd_flag)
                    next_state = STA_2;
                else
                    next_state = IDLE;
            else
                next_state = state;
    WR_DATA :if(cnt_clk == CLK_DIV-1 && cnt_bit == 8)
                next_state = STOP_1;
            else
                next_state = state;
    STA_2   :if(cnt_clk == CLK_DIV-1 && cnt_bit == 8)
                next_state = DEV_R;
            else
                next_state = state;
    DEV_R   :if(cnt_clk == CLK_DIV-1 && cnt_bit == 8)
                next_state = RD_DATA;
            else
                next_state = state;
    RD_DATA :if(cnt_clk == CLK_DIV-1 && cnt_bit == 8)
                next_state = STOP_1;
            else
                next_state = state;
    STOP_1  :if(cnt_clk == CLK_DIV-1)
                next_state = STOP_2;
            else
                next_state = state;
	STOP_2	:if(cnt_delay == DELAY-1)
				next_state = IDLE;
			else
				next_state = state;
    default:next_state = IDLE;
    endcase
   
always@(posedge sys_clk)
    if(!sys_rst_n)
        cnt_clk <= 0;
    else if(state != IDLE)begin
        if(cnt_clk == CLK_DIV-1)
            cnt_clk <= 0;
        else
            cnt_clk <= cnt_clk+1;
    end
    else
        cnt_clk <= 0;
always@(posedge sys_clk)
    if(!sys_rst_n)
        cnt_bit <= 0;
    else begin
        case(state)
        DEV_W,WR_DATA,DEV_R,RD_DATA:begin
            if(cnt_clk == CLK_DIV-1)begin
                if(cnt_bit == 8)
                    cnt_bit <= 0;
                else
                    cnt_bit <= cnt_bit+1;
            end
        end
		REG_ADDR:begin
			if(cnt_clk == CLK_DIV-1)begin
                if(cnt_bit == 16)
                    cnt_bit <= 0;
                else
                    cnt_bit <= cnt_bit+1;
            end
		end
        default:cnt_bit <= 0;
        endcase
    end
        
always@(posedge sys_clk)
    if(!sys_rst_n)
        sccb_clk <= 1;
    else begin
        case(state)   
        STA_1,STA_2:
        begin
        if(cnt_clk <= MID_DELAY+Q_DELAY-1)
            sccb_clk <= 1;
        else
            sccb_clk <= 0;
        end
        DEV_W,REG_ADDR,WR_DATA,DEV_R,RD_DATA:
        begin
        if(cnt_clk == MID_DELAY-1 || cnt_clk == MID_DELAY+Q_DELAY-1)
            sccb_clk <= ~sccb_clk;
        else
            sccb_clk <= sccb_clk;
        end
        STOP_1:begin
        if(cnt_clk < Q_DELAY )
            sccb_clk <= 0;
        else
            sccb_clk <= 1;
        end
        default:sccb_clk <= 1;
        endcase
    end

always@(posedge sys_clk)
    if(!sys_rst_n)
        sda_out <= 1;
    else begin
        case(state)    
        STA_1,STA_2:
        begin
            if(cnt_clk < Q_DELAY)
                sda_out <= 1;
            else
                sda_out <= 0;
        end
        DEV_W   :
        begin
            if(cnt_bit < 8)
                sda_out <= DEV_write[7-cnt_bit];
            else
                sda_out <= 0;
        end
        REG_ADDR:
        begin
            if(cnt_bit < 16)
                sda_out <= reg_addr[15-cnt_bit];
            else
                sda_out <= 0;
        end        
        WR_DATA : 
        begin
            if(cnt_bit < 8)
                sda_out <= write_data[7-cnt_bit];
            else
                sda_out <= 0;
        end            
        DEV_R   :
		begin
            if(cnt_bit < 8)
                sda_out <= DEV_read[7-cnt_bit];
            else
                sda_out <= 0;
        end        
        STOP_1     :
		begin
            if(cnt_clk <= MID_DELAY+Q_DELAY-1)
                sda_out <= 0;
            else
                sda_out <= 1;
        end     
        default:sda_out <= 1;
        endcase
    end 
assign write_done = (state == WR_DATA && (cnt_clk == CLK_DIV-1 && cnt_bit == 8))?1:0;
always@(posedge sys_clk)
    if(!sys_rst_n)
		w_byte_cnt <= 0;
	else if(write_done)begin
		if(w_byte_cnt == write_byte-1)
			w_byte_cnt <= 0;
		else
			w_byte_cnt <= w_byte_cnt+1;
	end
//assign sccb_cfg_done = (write_done && w_byte_cnt == write_byte-1)?1:0;
always@(posedge sys_clk)
    if(!sys_rst_n)
        sccb_cfg_done <= 0;
    else if(write_done && w_byte_cnt == write_byte-1)
        sccb_cfg_done <= 1;
endmodule