// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:23 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_5_0/design_1_blk_mem_gen_5_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_5_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_5_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_5_0
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_5_0.mif" *) 
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
  design_1_blk_mem_gen_5_0_blk_mem_gen_v8_4_4 U0
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
sEoREQWsZe5/bwIV7bEdRlY=
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
