// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  4 19:58:34 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_10_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_10_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_10_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
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
  wire [0:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.918297 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(1'b0),
        .douta(NLW_U0_douta_UNCONNECTED[0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20640)
`pragma protect data_block
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
zkaRNtO3
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
