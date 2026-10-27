// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_1/design_1_blk_mem_gen_0_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_1
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_1.mif" *) 
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
  design_1_blk_mem_gen_0_1_blk_mem_gen_v8_4_4 U0
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
gVGT6w2CInqLrLmKml91SEo=
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
