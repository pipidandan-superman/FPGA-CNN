// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
