// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 14:59:09 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_blk_mem_gen_6_0 -prefix
//               design_1_blk_mem_gen_6_0_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_6_0
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_0.mif" *) 
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
  design_1_blk_mem_gen_6_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17456)
`pragma protect data_block
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
0RnOxwg/CMwsGMl7YWY=
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
