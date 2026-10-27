// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  4 19:58:35 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_13_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_13_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_13_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_13_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
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
GlVF/DYB7YOHrwa8dZkHutHLv+QsSuCnLdsBPw==
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
