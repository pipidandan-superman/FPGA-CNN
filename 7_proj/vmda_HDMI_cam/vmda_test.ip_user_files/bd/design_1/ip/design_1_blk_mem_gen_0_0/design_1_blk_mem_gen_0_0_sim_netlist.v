// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:21 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
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
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_4 U0
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
xdxLNtwftTdkGg72kxQ04rk=
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
