// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_1_1/design_1_blk_mem_gen_1_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_1_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_1_1
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [0:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1566 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_1_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10000" *) 
  (* C_READ_DEPTH_B = "10000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "10000" *) 
  (* C_WRITE_DEPTH_B = "10000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_1_1_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(1'b0),
        .dinb(1'b0),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
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
U2qO9DQsVamSNUXWB5SYSjM=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
