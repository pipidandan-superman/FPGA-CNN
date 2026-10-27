// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_5_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_5_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_5_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
