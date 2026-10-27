// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:21 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17648)
`pragma protect data_block
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
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
