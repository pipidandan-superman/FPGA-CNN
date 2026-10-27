// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_4_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_4_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_4_0.mif" *) 
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
