// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_3_0/design_1_blk_mem_gen_3_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_3_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_3_0
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_3_0.mif" *) 
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
  design_1_blk_mem_gen_3_0_blk_mem_gen_v8_4_4 U0
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
85EWiKHaWfhwpPlgBMWP7CU=
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
