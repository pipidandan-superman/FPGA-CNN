// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_1_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_1_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_1_1.mif" *) 
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
