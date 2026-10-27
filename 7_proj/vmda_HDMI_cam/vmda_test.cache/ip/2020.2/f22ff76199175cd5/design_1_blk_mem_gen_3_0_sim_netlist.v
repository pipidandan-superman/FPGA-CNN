// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_3_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_3_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
