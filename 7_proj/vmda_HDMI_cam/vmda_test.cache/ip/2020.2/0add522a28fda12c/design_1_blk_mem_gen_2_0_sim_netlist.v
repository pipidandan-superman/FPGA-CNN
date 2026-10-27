// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:21 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_2_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_2_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
