// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 14:59:09 2026
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
