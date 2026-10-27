// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_2_0/design_1_blk_mem_gen_2_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_2_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_2_0
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_2_0.mif" *) 
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
  design_1_blk_mem_gen_2_0_blk_mem_gen_v8_4_4 U0
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
kaUOmap5mzZ7CvDxVpw4hAY=
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
