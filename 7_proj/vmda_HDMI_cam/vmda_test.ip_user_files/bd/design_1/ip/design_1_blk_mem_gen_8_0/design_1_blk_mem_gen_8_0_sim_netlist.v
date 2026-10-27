// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_8_0/design_1_blk_mem_gen_8_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_8_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_8_0
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_8_0.mif" *) 
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
  design_1_blk_mem_gen_8_0_blk_mem_gen_v8_4_4 U0
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
+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
PWlatE3FnbP9HIt44JvG8Rs=
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
