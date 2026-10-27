// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_8_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_8_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_8_0.mif" *) 
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
Mcup8fS9alWW555dnR8CBdEnkvLT+95W7OXi4SwVYidmQ9q+gOKy62coRwvUJBWHOnmvroW+vIOr
5cuiwlTDVsi7d0Ryjtlj6tLBmpeTrDbUO7LgRhc5peQNVp2hHvWqvX8PVa3fE3hhKF3xuf3bFiG8
tdIIH+g8EsNvOH1X+KOEVncCk/zCyJXV8slom1eCzPXXFcF4g4b9noWPsLGrdtACU5PLsZd3WuIu
7KEYVj9mewbFQYBoyS8aPn71HEXJ9V80RPk+ay2NvK/WomxsVH6dNoyEuaW/uVWgf4b8ABvjrj3u
OOU+LKIRd6puG3quhVWH3fmF4+XrnZV8wU/J5raeKv937C+pJRicI1Zl6qJDf4kRbq6X2Ky1RjRf
FXhh4v3iy+rohPNgZymLKDbeq6aronzdRzyK1oau8N7SEFFhc0QqCaYHIKqJp4bjrzt9bwvrsY64
DVVlxq+VDYs7Cn4ZsFEHW4kcTAjDKuYJSzoUz1pf9DbZJHTUoyQLka9DxCQPvBbhBsXcYqkZ7qdH
D6BTcgtSoIFXFtGrVMmgry76X1+syNmWsxdTmuzLH+63sgLlrBWuy4/o66AB0FkxLyr1zZ//HLXH
hhHUzIKYjz69x2tsmpkG6VVqJAncCZ9sjWkSNl/bPer5zgP/D62S5I3zX3tjEgVmucCwuVbY4o96
jSWWJx4GIOji1aKIQ4lerZ7ONRAlpYFv+3jlegng9k4VIDOKJHJ8AcMHqlJvZf2V60GT1fxqFUiz
wHox9IZ30CkRyZz7+1I5KExkIu00DokmpN/en54+5CnkyucdFUJqSABYMmNrKQ90M/AR6eDvhmFI
sA0JFsqvvtJiCOHsejBW/YagA78lHPkXZQtgiSZ85dsmmIuKk/zutPxU65rS/JDIVOdrXFfGbHz4
29Zkgo96pg5cpynqu4itaJjU+turMKPlegunJ+yG7OfHt4b1dOc79aydniWJeOujz1rbRU2KG+Nd
pRSpdl8xPcYpGxdmMW6Cqf6eGIHsVgJQLi4Yur2e4t3hkYcMfTbC+dqkHf3mX17JPnvACFgMkxmh
L/NGTrcGowEWgOd53KT8/+E3Qfa2A2ZbkyLTIv0UJK0HbwBHQpd9Eft4WYix0XfpmRbFqnPckm6r
oApyROyI2fvldwU1jLg+ZGi98RPrae61m0QGlQY57HK45/VDHxtvVtDMF+KOv6gEzSXrAXALgT4Y
UOl5mhLeHwZRqvjoR0xqCKEhKUYa/aPonDnemQeE5b3iwxXGaayi3RKu6ITTIRig9WNw+1LskNPY
mG426duugbIDXkaoRCzM/HCq9idjbb/F3RYsPgs6j09wR/hMMwodld37yGfJh8iQgYrZASRQPEfD
QjprJVJBt7D2OnWmCs4kGkBm9WXRhmYXj91pBJ2SwqwLtAnUyq1egrzgkcrab89u3ypkVpnuP00E
Z+CNofqsgbfUbmxnQ7/jHQYrz+oYJEUKHH0S5Ci7Rvl6oxScSXuGD9iVTWYX7tVCanhqwlfkPEph
6g7ucDA8MPJ1xVgCvYu5iMsYfSL3lp3bd9G4xl+TIOmUZc1E2jHxRlq34aixMexGL1jKBTMY9lz1
U3y5Q0FaV/fRxDCcoyHF40ZW+8xxselgp+TJx6j/tZ3123HQ3ZHxmx/cngxdCOgCu19xWnjlnZoa
PWO0ALaCRtw7s6jo+gJU+gi6czx1Vpz1Vnn13xhg0s0kyCkCpOp+PyI2ZqZkmJNl0hsGYXHb7Wnr
RL7WM7rxuYXhXJtTb2K32MwY8opemmBTqad5A0x32jEZoFfqIVmrSH6vaUeBcaqHuRkH0zAywR2y
7sFvEVKVbxMf0W4VmbODroS2M+Na34enCXPKR3h+envyZr+YbBjOBJcOvo6nCe/3jHsRNZ61HYWy
GLGY+dXbsH66FfUwclsUYYOaaXSue9InYk1u0HvGOF3ayK5/HTTFS8cIuy9vVJMakjOTdK2tfybR
LVMSan94Z4J7qJW6sF38Rk9X+fBbqVDf/VkS4wEyOi8xtOjtNO056JO67lo8ADX2BgUH67LZivpf
I5a390Ugg5HieW4DRmRDNGdihyT7IX2Y8xqzx8VQhdU0AVWNhdvsnvliqvs1zhcYwVIF5ZZxytTp
hOXWJLXi8IOnVfmjLEMEAnet1u+F8kAC4EyONrr6maoPesvrBSi6NotnOPk6yyeN+09vKwzyFdFc
T7Arx3JFUF+Go62I45D9vhfUd4VtnFtDqr8PjFY+Ej50QOmF7eOiL9A3mGCnoALGdUYYa0XXsYRj
KNQtVJpgnU0VTzTMt+zj1MoTNBHEqdgVtNLR5NczFX9+DWgVrO1Zcv7lag139iBv4mZZglF6IOfT
eUywPWK8K1/JldEPeGfRfAHVglkhHsfELYmlj5n3HWpBOCqn6tqVK6qP2aLwn5euBTdZ2ccLkSzV
xruP9SrHB+PSHKznZeJtwsAmvkXnO0Hg9O7i/9+M1cDqh7ae+Q2x/STP8kNJ45nSbakaJYi1teIu
D/XaDQ5JqgfTDl+TI8W8aF2KxjHb/L0KDh5HqOO7wc9+bgpgIAX5TgLSgf9L8jh6YKI94Yn49txS
tZKMpO7IZ3kwo32ZbGe83OK8BlEY76+7yAe47jRCxmDksc86AkbF97Oom334fT7XhtAbMdCkiZih
XnfIGgJlBqh3wrDG30tSf/8SkJzW7zXfL9ZvRFbd69bXJurHishfkGNtWiX794cliPEV5XTS5yam
mzpgBtiA1BaPzbzA7uzjpJDHjhumF8Crj39octRPA/4z3Cb+FrxXbQDcZeYXcBHhrIofGvqcAjhj
H0CmIJ1hWNjYSx7l5HsrOz2lTJpXW8y8s+/1HTgPf2tBAwVUDIxWFxvaD/YgdRLWi45e2iXfSAkK
lcEJsbx0AidxGflqTkCX00Blefj7BsXBCKVpAkhA0neXwIVc6oJCrXtO0m+uACvfglNSdyRv7HCR
BN1r8gcX1vH0Y7N0XDqGvzLJAPeUvqHPCe6O7qxk1MBuDlXAADr+PdyFIft7X0gCw4rGCtQI7ze1
dSbwmBklugft/7TpJdDf6K5mzg5LD81oTfXaw4uJaAyvFO3KiHAR65x9rZD+Hsxb0pD0zrhE5Nw8
P7RUGAT1V3tWnbAPRSdOh+lEMUmnlT4zf54WV3cc7qfPEnfh4lsT+PvCf5tKiAAJgSavY9eX8T/i
MnronyPCvbMCILYUtKZW/HJCEy8RoS29vF/mQKcbAO+rEkduKFLxV3ndp0pogu/Ly8ZC5z5hYVjx
eN/A3USSJp4hmsfsLxr1kMqSYn0+GFBdluBz1h6iiOKzssuc0PcnNl/02sNRIgyKAKvvKTIj9ELY
3kBzs2kczk3YuFOO/qoe9CfRkTvJFE2av6R3hQuUq+HY3DcRJC/S7lLyEF2CHyCfCWCSLnhPJ5NA
8M5hgXQJphSQitza/8OUi6jsRjiDg0kZxpfZc9L/I1ukf5Ruoza7u6ly7esNwZbzOkRzP/MDIogr
fJFR9wuxGcJLVyXtalq9/NM5VrcvF3mjOxiYgNRNx2k2YDScrGcIOE1yfjTlFUYgsmQFJoJ+NVkn
fezXlfzHhY7K0S2pQSiAUjqlBWOpgNaMcP7LxARmad2zwjjViG5ppVPUrJ74dKQgpIaBrPBQALnJ
N05UGvarcgPM1M32wNzadxabTMAfiXhdSoC0qyO9nX8S6C1PQTmoS3zg784YsxYu8AMRUYQge/0j
fQiEsGQ/UmNBRznQ2UZ+rEeqk87AqPLQ/+5fZrliK8+IGNAa+IpNwfOTugfkXEfmReZ8Z4hhCibO
g/hm05HZK4+IwGOr3Ld1MRVYf8S0IGrDpBDBQ4c5ZtOo9/wn8XNRQ2mItG54WNNTr4w6ti0LFH9X
SUt7pT8UmXwSfGL58qzsRkdnEjIdyODqa9sJY9dJU/JliCgZt9/QpgPjzuMqaXfulHHctKtKSac3
YfElQ9nBVRMSMZeLXO/+BtWzXUr68JCj1s90nhvF6byMeGEb6wmmwUIRs4xjWEXkzpWbZejDXNqJ
jPzTJoCFAvkAT/8M1dmA3PQ3H5UQqbCTcSPPS32v50OYQW2wIt1QgraMqWmXarrPOn7vA8nwa+eb
gDK7j3/p6zMiI2RqXy5RCDBhHJ2bfYHAPsZQqaJB1a9/9mfLVFISsJRGy1nRB03b1yB64eGbn/1p
na5WL2hd8RoodZU5lw68R2KCAH97ebvDXjUj3wuw4iOYow+B2ecmiu374I1AonHv6JgSNacNQ1mW
WcMj0/1WS+UkPsLipAperDKakFSn2AHwdjIUqOnDXIHFtgffY5TMGWqiY9j+n4O0X7bNaU+1yC7U
V8X/FTIZud1PSqi3uG7hEnj53dCKCzo+53ohMBY3Acg7vQ6bMZHEpRtvNWUwPJHFQyrDyXtt7awl
wJsFb6K3jF5o4Y3UG7Gjg8WFFYTY+d7WnBCbLpevr7oJGldu60WIEZv6d4xk/x95f8InT/YAIChm
YgMGlnw4gDgn31MqcD6voHYMjrr4Eid1tqjGpRHkGdJhzQt4ap9JNOBVFD5Dtb8eFEYb5ly63o+u
bs3nx8UQ2HazUnVrXnLEXNJ3vnkbvmQGAPKw0IjqAuPD+cW+zVqBp4VPqLv01sjWlDJI/PxplyOI
tVhnnA7ta+/ApxRj3xEgxCt3Ly9HxmzEKyWPanL39SjQCm1XZ68GuhaLJZ547Jk8VlEAj4i3O2qw
m7S+zoX91xogVv3VATosOWLH7AT7eC9bkC2N87kTmR4yaWoz4OGaGZbcmg9lStZmJazkhbAaYVip
vvdzR28P180drlGV86gO0JR/lK6jwdr739gPVs3jp9nyMT/fJZZR/Op3/WzskCM1Dnm3w/rGimlD
myqR8S0MXkgRwil5fhmi2yfSpcFwh3CuH45cZeArSvI4MKe/SA43TT+0Ka2/VBBYR1UJxYx6wJeL
dAbUpLM/tHfYYJUmPGXc6HI0L5zky9Iw3t1kJmuEEH2fM3CI0LJ/Ytldp2T2QK+ENBbUvN90Kqa0
M2rvjVwSftiUFaF/2I/fxyphX3odd6Lxvz6K/WxcdLhlJBz/KcBbuhvz25VnQIEfFo4Dm0PsNRrs
TxzSIy5oe0nDPQMXflBaMQZTHUJeHJXlFjKkYiW23rLnJUbeE5FYViFLS/OUbUiXKhS6nzhMdWuT
h1j25yVMucmq8o/0XiBxBxKMKeHjFLoLLRmZKWSq1VmIGrHUHGsSiF2hlvPtPhEOPGWLJgCj3Z9U
Hgyyvh7y1G9tJ+nngSfvkmHSp3KOtKkYfFx0bmVwMxegsjD7nTEW8gOTM8s47UvJ8maXJliA/+rH
o1efw738S3++AzGqCLjMdnNKa4btBO75Y9U69TAQhZMN28knofjjq28peemddGspfJsRGnzYS45D
Nv/w3jm22u+im3bQD06Humq9tJ799LiNkqXAz7rkGNqG93Jhpxg6wz3+kLCqfpDtXEAAxuXFGb0v
2ycAVAfHXA5yXeujLJp5QV/ruCwOnBXiMl7mNLO1CliuwyAKuBceilWgx1B9h10VOzWNdZscJ8zQ
qzJuRKz0BTMxgnHl25rglJB3GCeTZX4gPej364xTdagUBYdekAR1rUU7ZLEUAgGQ8gVOV149kS+o
A97nI68cpbxPOZYLqpPGukB7kU4zOq6uIrWKBuipqkEqNklMDxw+wKcimGiGoNsENEFxVdhwAMrv
W/JLH0Psf9FDZGI8fGKO7+Bu52G4MqVU0iwxJtwE5hXQyL4iL0SjRo6myeDSXrd6sfvp3UguvyhA
1c6Qcm/adwqqKD6UoTz5K+wq25q+8uij38sWtEu43rDJ19dJSYauXhTPhnSmC3v/6netFgubxvc/
2tGgze8/XxZDKLVxQxhG5TGk7pVnEo9tBNVo/C40tXNag7QwMf+KrTz9kinUaaqfcPU57i9JzBFp
97s3yJMK1qMmX2wp1hRV++ndv1nq0jL1HHrARqfdqZnj/6G7p0vyqhZVi3k1Yp7HxrwO60PIANoH
ixg7SXoLNW59LtwPNVQ0U+ZZnhX+zxIBQDiQ9YxlRvz6WTBR4WvlYioDDy/hUIpq9UHDSGlhV58R
HgweCeUWauwgn7BhD5SXWg2dFiBF3XqywSLy1U5DS6zyn7VCpz/9Qo60fN9zj9EoEGFax60OM6xb
suG6qF0eOPZe70Cuza9Pzaxj4HbI9LIfhdIa7b1ofFdBxXeNGpiR73Wx3hoqF4i1p7C3Ow8xUEcf
PLJ6OMUJqUXM7BqsQn9Welv9pgkCDp2DofCSReH18z8DaCglydAbIfpEQOs7ZjzQD94kR+yZPSuD
9xFeT1uhbCgiPIU8te5B1q6pxB/8glpm0KYk3yP8m5Xj7t97EewYb5MlenBM/nqEKpa7mMycXZoQ
zzSCd8SdXgckeHPRkZiPTX2vqNr2jOKhGMXC7rpkuw5vg5DesHJUT1LSCANRB+oLPudJjhn9orXd
l4hhBu7Rk6MLbM46L4o2C2LMYQ0bVeQMddROrP/sV642yOZgabpJwVNZ55qI8iiFG3Nobm/7udIu
dNvBWikM+t8AxKCIBqzjB+eObtUGELKJ/mPPFdANvx0uJjBLAvtqxX9LX17EBrztCBSshE4oouIY
iqzJvpzrxg0CBrH1f7RLbEG3L0CRYc6krsYqmBOI3oT7m1ONx4Ynd16OfvZ3FquiSoOXJ51Uv0QA
tI5iDEs+Y351EoKXNONcTenfhgb1pxXs5eiHUJ0hyOVRb06NNypoovPJls4DSMYG9oEPrY+38LJD
uqARUBXJ9YoFtwDEe3Fg3s4cp35IQ+3QjFN82GGp4pD4NNUZlipMs1QHIAwJHfzpI0MhY7SBTpSy
jPsIlFH6LnKicAjNTZ9dTcnndUwoTOfQEvh/SC8OR83Q+qJgL/xSi6GWSPYgTBLopKLK0E8Uk+dU
pKwSxbhvbBF4CghzZSqtjj8/oX/Z7gSCbFUCAn9TUx2bsWSb0qh1a1Z0Hn3wnFELYDwUZL/gizsr
+sinlVp4BPBqLd29j+Bg3VjA/hig1pOOodrFb5bNoaWEsIEmDkLwaGXHeAIOhEF22yYWK/DhsdwE
Yrh7/fsm1SF5phBeAFxssuJcqinDsakzIUFbilh/bjH5i1FBcyC6trJZlDHkQKRoEwIXksTuQXEr
aeAWq0GPpOH+WgkgT0+l0stDLpyLew/HDWqGE1HMQchl+d7Uws2wUjJWXbbOv1ta35l2V2cQ5srt
BW3QoiwZTJoaP70CIDF4gW0J/d67nI4h0gV/ijneC4Rt+t232IusQ17tRxEGVXdBzBhtbhZV5qLq
M2zYHMe099VGcKd8xPUlPlA6r1axmIn0xII9fiQBm6zlSd1p0anGt68mP48icdbNw4AirhhLYALJ
+Lr4LgpPnqsdC67/aqH//8O91PEM9bjNQw7MplLVUh1gCY5aBB4qmFfcmc1vD9EquVi7PlPGIzcb
bkX3jsExoV2M1/S24u1swE2K6mBD4U1S9hrbqmR/auLyEhsuPfxlN5EnF0McTa0K9R/svUcdwVAz
Rg+5zjdBFU55kIeXbUj4bKjjbPegL0QMMStP4EHiMe5clEFIZRGDF8hW7WMY+8mcyN9YmiXcIuLN
5S1BbnGTA8c2CnPnBb0gWbW4LJ3Qwbm8PSf73f2n04NUpIxgwWG+s4MqrkuWZgby/TBmGg2yCjCv
TMfNLQglA8Vgj0vxjlKajhOQ1rc4sub8coGs59S04L86I7VOwuTtZEtZ1PWiJVRdf5seQYWq3cgB
QerA03WitqDbeWznrpoCULfjkVwjLSE94IQx1WvFnvDWfiyZ7W25SpjS+hYl6tKBNH8KKGXroJ56
5qVzL+zBBU3YJBlOc/IGK2q36MvxrUprDCaR/DEbctzy0V9SrYJiPBpPU0CueiP2yz1I99CAUqEf
BH+bvqsAccl3sk4z9VFMbqYoKQZ5HYAY/EroeJjqR8O6nGVJLj94567HfAhA9LShJx8ieTAuPU8I
Vu+dywn29h6Xe2RPnTSksvGr0Y3u8Z79qc7VY8OvjPMh1fqCXBMs8W5WsO5gnqD1TijLHbtbLam9
RZslidRj0INKRNB2Aeoi6jchxHGCDFVygQp31Ecm2NnjlNXdOtmyXdk0cRrL3bMk4QVorneO56kT
5f02aoLNYQF2ZEnWLyan95p732QCdQM2vQ1uLdOAzaIAebnqGrPGfob+2rxUiCkW34Jinzn3iuMq
06L74QogWZ+V43bX/d9wvbzStoNMj6QOmzaDS1wA5saqDwpRX1dVq0ZIBXA4hk9EbeK34bxHn7ow
OpO0NfVtaON3Py0PZ203S6l/vjcgH/9bCStTOcXMdpQ8pji1GX3Lpthx6pvkZr3812Hmq5CE7W9D
uzcQwwrxJwxXc8a0V8VJeU5h3PM3zk6wxvOvFmOO/O8V54EvniXjqyRIkbR/d2GDKBLJdl3Hb5fi
GjdT10PXpJ3cEv2xQeRzs7kOL+QXxPNyylfbNumvqLao002BhSs4oFC53wDsL16Hwu4Dprqqo1B2
foizmHrUHvjRAG9AVLDcgA6wWutsZmHPlnv3SmSkuNaphyi6/95NxBRg7bpdBdyX2cbjRh7NKa/m
W2Cux821Mc35fMeF8hhgdpgWUoPsETnzKA058HiyMy/TeALd7AbJGJQ5thhw3Lykf5789dvesZR/
aVQBuBBJXmXA5rMdOoAnLixx+56E4g8j6Z6PtYloGfNJV5HnIoJqIHhJVD1IDzAtF+oaDJHmjBVY
cpPGoF1zTexzHTQhOsBONb4kh5FR0F1VF5nidAVJJLKUP910luQgGYzKDwnKiGBT0sYw60NhyZAf
7BFeKnyHXqNl+JYrPUm5retB2EjqULbAm546U2PURkjSLrHikufUC/MHau6+xlJIeSa+VkQ1djjj
eWjDbcbMXaBXFdaEeZ/S6RzcOe5RE3uWKz/OXEHQtnxcP4Cm9G5z1XHm8mrgnE8b0nJtxWwG8ADK
EhYWbnnCEOlX+OJ2DBol7WLkBH/JgJnOohBQ2Jyvmbi8IG0H3VFA/nN/B6METajmatXNrC0ZBLRl
ia4AVduAiWGeKuZWzyplinmPg1hTz5/LquJPRfRuN/po5AHfozFKUwSOdpbdRVqBlYZyxyPml3tL
iiO691mxLSmMxpRJgL2sb1Yd9M294/ilLjZWymhd6hPn9kWnZusMsU1Dd7xX7MPqoyEWt4E2+HWo
Try9d8isiooErcyFkMKeftmx32xK4erLUoHdqN54+sf8zhsvxZvYQZrx2UmgEFlUmYyEdc9URJw8
UigIUDy8Lh8TZ4ddiyqw2IGHCgG+6cTo9R6qcx+yV60EerPpgRSop2Ll4L/khMd7k47O0ZZOC8Ju
wmYFWp5r71r1jqD+dsYh/pVHuKm3dMvZWBmt5hnGbEX3YgCW6CV//OWcCHa3mLnEFjhZI7ys2a6u
LtcHpxeN3SV6ERp7+c3iIrM9o/GIgE4GI04qxqG18+jOEVp9I5S/MRsTBw5/gEJk75Ktr3Gg7pps
er3FTSJfZO0QokZi5rrn2xiebipsIPHZ4R1nu1gdr4D6lda5jkM1HGjhPgfYQ94JoMKeDQpcim1m
nBu6LPu+enE/sKeGDFY0I4uk1QK21kxvuqQgUID8ZaKhRPFwb6b/PwcO6lwNEQiPBOwU1fhejVjT
xg4L7c+jzeI48W1hJI9tWCwLnXo6SPiPifLe1Q610VU8snwjj46XjmGPepjQsbU5zD1LbrpyNc7o
OAfYfrE15LlJYRDDua1W175iCQRaJZYEoT1YSL2jAVoKMWl33pgTbJeldlIIjAYyruaWWqQIupK7
6vNZMNyR1wNMvmpMQlfTbLglK59mR7APA3y1L5eWar6rJjtUvdW5JlBMHj/4E1y6pap175bckaJA
W2UJeFWqXM9wm1h4pI2QZ6rGuJCxcwhEXfZw5FFX2WbBk4p2WXogEO3LKY9oeEhi5z3jMzlyOYH2
HcSdDxp7BbHhcQ5Jdhx/tKg0rS8ll54KXPdP165h0TfVW/89mQSwq3Z1drXGaCFa3Yz8bB6jqv56
X/5rkndtD7MIZ7RNEO92yujl14jDwhwtPgKD3th5isAioA5vzpoqyWRztmHUGlXEQAYtmdR230tE
yidRMgoDaoCHHjPgsSzXh3aH8B7U7n0bjIqw3tcMdEYwB0MH3HdqFvk7d4HxSsLDoM4IJKtcFdu+
eZ26Cwe9hRIDj2uAKPMbww6a06OT9z5hOremORAh92AKHW4NiZpE848/RExl2NLO03oBbXyatAPh
1bJ/6+DK1hLV0BL7ki5MOfKq3fnRMXP3tV66seP1s2dA/xm4v7FAaYuNyriYePkZLkd1zHjvzVRF
sV13WZj3+iNKdM2Ihx/oQyjCLKLujk9VrZMmu8LPIXOM2DvQWKjmHid9UN2wVZ4pckz3IV+I/YE+
gLpMYF+3wq/RbHNip/nfAQ7X/ayXiCdi6LwMma3ZpDw/m33uFqTa+nt291oDfjwc/NEIfjyVqASd
T+1+22SSbmtrOtdKrV3nApUleMnBdasuvwPV6H9UWB7DbDuH2iMyaWYrEZKGJW9EUDQgucX+8RxA
ubKtPMgU1NzaDVSFOsrRNBao9PUWyCrWsYZDoEcgE6FyScx4k1yGjMQVuaSLuHg7rbdNu8v6GpW4
aPJrEm8gep9mGn19ivBgYil4rr/kpRChUm6rKqnL1Ay85X598c6O2bpXkR3D0QsTInm4M4VaxF0c
ZB3ZN8PFh+/88xAwFirP770OajPWLEx6kqJsRcgbHUgbxxk8aXuEqUPbdrfA5kSMK8IEKhblnfTD
zUesNdSmOyVk9Ol+l0i4I8HeaW+HYCMyyBneRemlMRRhbRcIzqcnkaRpPsu2R3HAdLaw3GI+edwR
95uqGDkzdZ6aABmLgqSeRpyz2dJc1IXskqvqfO+b2j6W8Y4mySjI2FI+DD1fMRFFPhiiy8NwAcaJ
l7h9Io/KAbkEFqYhbdFCdBWknzi/Mdr4PoeiefLADpwiIJ0caxw/G7hwPLjQdJZ/wS0YOBHRFpmy
q4SblTyO5kRPFTR5ErUn2otwZFsich3HdevGPcYoXQjbLBmukH5nhYEa2DDUOFxqTekifkWe7bWP
gzPItJcP9eMROLv62u38gAJKfVkyPxZoXRu0WGO0CKkstU+5DXYrKIFEiCgIp5Qic0EQxipi5QmX
8ZdZF1fpXjFEgcumtvfoer2uqImB5W1unMOxwJQ6lgjsBa6Rb6sJPLOtiWKc2SVysy6jvVXKKWXC
alYOQDqgQ5rrgbG7G0q6uinh2JjhrqnTHnM8vL2qR86kxl1BAAVslY6NMck2VsFT/f8vE+0ltgm3
VJzp+v81ED5YUBoZmvgtb3qEbQ6OLwgq2mAHc0yEEGSpZ5z7O70WdPgUwl/gGyx07SwgiHR3JzV4
V1O4Uk2TFB+IvoGsaVhxwbtimHWJMN02/wBWlSnvzOJlTpnaiZR4t7o8ZP+mG4cGmQjRCPk/zwg5
zS0jndi+fM0kBauX/EWLkGWm3TONLxoze/tqUdGW4rKHxXqhZVTX/1PNgNOlSk6PkMy5sGuhyW/S
oLfJcrnwiwJjLPGFnlskoFvyZ55mHRVuDosjAMdGXDgoTn4QS3s36ZnqrVnFVxjq2xNt/7iMrxKh
n2Vmoeiop4TuxcXK7Mc51tcUYRaAqXCoSZLcYWAPe0A4KqJDpgdGF6s4a37Kps2v5cz9u/UVjiLX
k2bYDvuJoU8HBTN3LAzQrpD6HYO068hkXrKdnpswexksYUKQYpYYOL8qFm+EljdYtk00PJo3qzZu
iDSzOaAn9+D0NdSXF5JyMDEAPacgjfyMN2acCJQezLQYPps4z3DLHz8DMMdHD6Oze9/VpZdI45IT
bkKVS8K1ItzTjSqUzYxg5Z/kIAc4Or/X5J2fYVYbdXKpzxB+t/WlXFj86hJpC61jl2mFs1DD0iQf
XbHKJv7lRJQ6b4tU66SsiGbkg5pCq/hLzVpP1WvOxKF3JB5lszznSgQPJS//LokHTTNd9i+s08HN
BgNv2kWGTUJYl+iTRFZO3QqvDG08XZBprQvX19d75+/gk4hq9W3P9UdSTY4ZZt0Fl2tkK6DOdb9E
q6WRbou5Ddum8gYKhDDsLlxsTu5rNrPOGwtgFp45HE6zLPxYs6WC77DD/hXKriQHkkgnzRGi6uax
1WWnj1GO5rKjYbq5lUk+YfFz4jXkIBZDhMMzPTV4j9Y8uCnC4YpDNt+Qnr4jml+gyB9WVdsO+Yqy
nLOWsHQVI22evtljepiYHJjI9m2aowqqhX4GTzVF5P8m+rQ2fvlquK/r8UfmqM5i/dkreBq3M2Jq
J6gXA1NsyqhiG2Qkk8i3/iPesPOgbBsd3FECHoNoD8YGCmyqO2DixYapR2ejN88skVSHZj/p+PFC
vNnVkmrbGr2txey/cHgh40EPndNIM/33Vurq6VeLDkwjtmBGUypppoHcFLgbgjs+kQT9g9fBnvAz
btUSFfgELLwCo1OZ1W3OaACFDS9B43m7ReFavyicfLDv0deCLiRnH5M+MTGisOW79d8F2YujtFZg
XN0MgIBSm3bwH+UxB4O15zmh85J9RrFZOsBbvykkfVDS8sJ/7mIayPhCLMNjFfr3fzNE46ydzg+P
AIXxRnxDG0LDc1UjT33JCmB6cZnu31UcpJHq1V81nRVtpVNAf+2J8qeqvwMsMty/kelOF7OStGr6
spdgVbxh/msvE7Q5y9qIBOwStMbset97J9m0Gx6vBaTrzMH+a1Q8XkT1j6keNQn4dHf+940lKPHt
E668Up70NJ/KuPDGE2gTaLonm6mwnZpLwHdEk9Z7CMfWggjCZ/QAdplhbSJLpjmV6chmNVd4g7mV
H+HB2gwnRJPbV7QE3uX0WmcT9MWbv+dDXNgf9N7rQFVizpddhXR6RfSg11oR6TnbZH7XTBhjag1n
9Nl9ythVTwmA3tCqZb+yiBkeWrgkwrnH5mJHBoaPlCsK6V5nokA4sXiiPEsK4422Trq4D3as2rYF
tKwuJt0txTus6SHQj4FfqSD96N4eWP+gOIsw3quzwJLHXXvN5gDV9te+bVsKM0F7Xr4+UB4n64/R
DQQ/b09iXpTCEQRgoAjMIbo22Rp3ygwaou4cKkeCsYB4FrwkCLNey6r3JY8hYSIwNcToYRdvxu5p
AaGJgotxde+upSXXqDeMQKC8yf7QW1XE2I0foCr3eJRNa7flo7uK9oWhAtZJG4o4VJ1dfR3D14GU
365jOcWnh2BEH5Eoz3vNCSaTY+TQKe7JXsr5J/5KLPTPWuWKU0QaJd2m43zbZo9vwztis+6VQ4nG
mmk/Y6PybIdwanpSHrrtqRWXY/6+lE6s7D+Z5cd2Vw+zhKBvb81mbISs2Yd3AaINRmQVetEjiN4y
S7qafy0iik/kePIvrKc+KvAPbZGd2xJxpNPflms4RuoSF7t+WyYn8caLmgWkzzLF5R5nH6PUEHfq
qTqrYjjfxVM5TZeozxVghiR+lHoK2CzBoTr3KU//Sl/KGd+pBbcu3Wf4Uq+88jaeeM+AFgCDECKS
MESZiM/CTarRsvP9SgNqNA8HmgxV7oJ9+P5G6kfprhDZtjcWTUSMSR7Um40eKl7lKAlncg4Y64iL
1NxjaB2Us/dN6GuqPqwVQyMoPXbHY5NDcTQkvsNTGE6g0oLbGqGmOoFTEkpwspn97soq3RCcj2jw
IHk6m+SrduflU+x8FNmmNWnTCFl3LEv5xmsOgIO4pFdTapEyInS+zgJSpx5vtgkKYWtk4mNFGvTM
bna3yHIDsb0CicDm472bGxBiJo0QVYY24rllsR1PHFC4XVtj4926m78PXVGnQUEOFtdG4PBqs0/4
iDrIifyYofOAmoY+4cz36cZ7RDyP4wE0LMclUtUDkO8QBpso7A0DkfsCI5kuOUxTlowLtXZZgOEm
fbqh9feV3yTKvOcu9dpzzdsbspPmBbuQlCPwzsMFa3P2DpSMF/tOMXKwkcftXY4kPZBbI7QJ+Ptd
eARERsgFdO3nkTIG4qaraV1bFND3faCQPDkNBgOSnITx2OSOELJYEukndlcgkl5eilWSEjCv4OL6
NIlDMqBKeTGe3V5ybQHiQpZb9pyOQB9nYIg2fmrtnBmtELHxHsmq8u4X6C3639yKiZVmlQn7z400
iRU2YEvompZywA6PCIKnHliKjXNrqiX6KYh0f2gqjVSG7MxNPQHj3hc9ghKeYS1F8gr/qsDYHJpv
mucKVJNiA+VSiYym1xgeupiPfBX3s8rCZmWAM/Wi6vNW6Xf1e60PR6GMW1fo+SFauUYEZicYejSP
nvox08b959hVvxrm9rhHswMZvBjoOqSxzMaC6CazI2dsL7NF09mMd5wkPt+9YCM869RAg1t0nnEg
wTbfnT8TztepgLLCdaBNJN/SoN3vVNz9/+Dwf2IDWdAsuCsncv5Ld+icvjLcDPtoXiX/V0PXMA+F
+/JXnKb4nPRLf8iJX8Dific26n+QdQjpB/1ofyQmtUwdpY/INL0w+rT+3rJeh9/SiS6tZeYXhrfQ
ZuwPa+DRuApKPWGzpXInuMRGmRsRChfxh+S2yDA3boBogr3Da6oXPw8haoOfQkW4wIgeOfVU2Hof
Xl7gTjhmnZ+9m/SdMuB/HQ/8/gJbv71GuLMLYNYVc/zQkKQQuauhdOGO0RSqyRTwT1xmWBlSSDrY
AeK57xa9N3AKyxTTMy7qijJ17/nwWHIBvGo58TQ1VMOAVbD619epf+hFUPujqsNCsBko45n3w/yc
CW7zw0ZNs5yQ4GHm0JMDbLb98x3tjrDr6FAk3eIvrr8NtFPl6RSm65NCtOH9/pYz/Vlz5lnfT1q8
8mtWScHTiysyUunJVtgM5LiN3Ow2i4IgTgcS07uvQXbBZL1iaUo1Pik6JFKBWkuxbPLReVtckENQ
wtwJICE2kIQfPNatzTWcil5ZXHosbhIQj6Vw379VgDMY03xMXvw8xWF+YMhnxMsM4gDReWvm1sMc
brWiLhjk/GIpxg6OYsSAwOc0blUIzQAXShY9R0plJNMZZEDCaS+1p3EBDg19QOV4cOtHAnQKJb8x
12IVjzztqFPbcDR3moGTbXnoI/RCQnd1fU69KUgMsR6q+itScB6efGdPyIR02P6OZN0unsg5b3AA
LjKjlrqFYBQ/2g6XHDIRE0MtIEVFdcRQPXWlcjQCCtdM3C4e/QQhGoVg0JArVQwfHYK/dqXRGpIH
tYPTlL6f8HlJRQAdeTI0x5ynPH+ez3XRHBa61vOXInaEsgzcsK5lIX93EoouTrhuu5kud5m+Gy6J
FfnPk6HK8n6MwMpJ0II1j5Ovlz5/WOp8BjEiHWlEhvPUlc7+S7qZs7Jd5yyVk8b6ZkRIbcke+MCx
qJAL1nm4rYSGp49vY5A+RE6p+DMqiI2USwEW+dTbPZOexcxCYBjATU3xpNKm8oml0STX7MXoro7n
tj85TiVtzwtgojNBGccgTSspXcov+Y/kX5cWni+Ze0YojAv2WMygAeZLMhpwxtwav0DP4A3FrAFd
4GMAfVUzBz0RUtQmbf+5xDKypGPoSdNruWbUanZb8F5C+iysOWuo1+Zy0Mt2X3qQtNTKjH1SieZb
2dpEp0OX8d29lLEWRkHO4jmfEAOIwhmKowFeRJVH9YBMgXAt/4OKkphrU1FC3gwReBXK+O4W4ywX
R5lqAXv3Ft8RsdhixoNB7x82U61lloMeD8vcqqmJadoG9QYJkWLTDJX5eZw+kNLhEmu7CRShKzPl
712oL1WJ2FBaDCYuRJ7HVlWtvDJHugpDh/jQGCxPW+9xQA0zqFqI5bDshp36QPBiqyWsSBOH3FR1
2/oBKICZT+2c3U3iGBbqxeIm2/P8iTUV3Ao8xfl38nEqAS1kFLFy4uh/N6poE+4B2AlbDYMKdP7u
wrHboe+Ymkw/ugNj26EqfOoVgqXHrZ4nBslkY2h1690PqEpZKgjVklMb433uXuwdKTncUxonoqHb
OY4z/hoDPvkFUVc7IqEaQmpltCTt3TPPP8yQ/N7R/cNLI6vyRVElWKh3e8X2SAexUdiRF/1BSI8P
7AkDJ4vAxKCA2Nm3FuFZENk2DIJ/OcM0xsWBdCpQmdD9NyOsKbF1fZxYaK7/ufb8M5LumpsEjSiu
yFusHb0Pep3HB4nnKAMoW6yR87c5RqHrlzuhVfQunxB9k+Mq9PnoNgEGM5jIiIQG+xWfRE47Pnsk
Eut3+NomXgd7GMM+KNyU4VlGVsD6KCrDiMh+kySVBavW5gSukm4Hy77Zi2IW1Ph8YOgwtYM0aQTd
GcSH6czx25PQ3gRkICGx2xU4U2xHYGSRQzVZMujo+r8Ah7Xyt8WJW2FVonH27PlKdY44kpZuZaRv
ulAaINfSJA/qU6bNUALoH+SpwliSQPcMdE26fTNwu5AEXS9xc0BuWA/sqy1PUgPtCMcvh+Ss9Kch
agM7DdmAFzU0n4rsv6qTJ1kRkorYX9G96qI2rx98YV4VvEtgudyf5kM4OU7ED6MkZg62kjPaiLQg
sf+TjsvR9VctLAKINKIq3QyIbhcTeuDE/ZFNrORrMOsbOa2iW1a/gPdkeD5m0EWHbEc9TuAyvOHx
lsiTWD9oSKSHHbf9oua/NaOJ5oW4hsOkEQnAUaV76PBdU8/tLQXcGTQcsodb217zym2CQp3vuNUE
PHdD6HFM4nsQXWPtqsLH4hIJsiNV9TUploorNwhVNkGjyicAD0V4332dGnFoQcnk5KGbA0X9/WSB
lc2Hr4PSyTfHhob36XECnOm7JyhptHsEPd2Z9lMYn5rJV4edWCKSUgBDBKQmZtjNDKfUuIl19Qv3
KoJ+yvj1sZJyLAr/RqyHDVgGiBX8HblbYx0nqWPP+tzQHPTvq8hDwEGNpurHSbTp+A5qGCVPqpY4
PLVyi0ISMgDyCyldE/Ac2m0GCeQfxQkxpNTsbJ2G4b3CF0GTZRmZF4sGYm3+Uq/fy/LwhLGpEs/g
7izOyxaCBMxtUkupNOz+tQOzKKF9J+m7G6fSTwJdkG2S2KsiLr3fYQ5HCAJ2Q6+0ouUrHyt4emVj
dPHgyX1gz4j1ZwuhuPAgLtCFndW45D9u1gWR5hSHIL0PNNLs7K7fcURS01I+bK8S2FnijXFI+dMQ
uKOBMlSx4T09xJxU66JluMrytR1C4aBVXb2W2assATayFV80bHGK1ZWJcNTowQwVMbnhqA8N6G3B
eS7p3aRTHU0Cvm2/ZHtI7mml8UGwu+YVR2BfKUHGN36+WvFUiEgnmLBQMl6vWdo7ZPCKcoWF3wUu
e1RGQyRK0PdxGOGhwBElddVYMi8LYst8v9wSHeyrXY+2x+lJYadK3wOC83nPphP+/OnAVft0QEK6
EqgzDjc65FhD9cSBzaXf/XuQoJIHXwVyWg0/ajS95zwkJgBsrgW+BJtWwBl2/mE2q1u8s60cis+v
vlYJMtfaZM4HKRKl6CyyUiwW+70WPAe3fcznvHMAg/ieMpdrgh/9/vL12VBtGH2RodbyAelEi/W0
HEgFl7EsQVG29sCq+aanf3g7J+JuMsI35tEznQF8tzDDkSvJXVRJyktjJDNHELNgZ3Sj0bp5X/XA
aMRYlm3N678/rkWZToKHNDUv14ku9k12IegebRvskCsWSLzfWmegK9G19JASRZtzj55rWayAetVb
F9mq4iS4uB60h3fp3lF3N9goH/5n+MB0v+CcSDy3ztmcwDyQ6SROW1wNqN4So91byG+hFNV/czDB
iHB5RhBKtIw+ljQvmvac3LGlZ6m9VDYYEyQ5oRwhFs8spQPK0Z4CHLmOygBKtGMe8gdvW3vlQdHo
rGXJbpNwprLBYOAPWVR8NJ5Zb62j1dOVTgLrTAcUpHj750ochXGsQLnSLEneuvjTcTLqZbPI+uHJ
cwwJWWuQmjHSRX3YWGVYbN8Ae83slznysKNppTPxgUadYGwytvQN1tVOBn6odJ0thPRjId/JKhXE
nFO6vkPCu2BQnWStUEMSvjXepoAGCyzYJpI9rjIXZTKBxTAAuoh/oO76SqrWvK7jA4aeAZz3XPav
EBFRJZU9s3CGyJECBppo+tY/F8fgP6MCkAlApiWpoOAa9c46UIbEH82hkHBl7V3MI79qg06i0tz3
0rqQN67zjDuWof9rNGMgvgmKZFEIxdt1VO5m1c41utSXAHeR9juF4urugGqP+Je5cJCrK/bLH2JS
L34m+KOV+OFMXUeH97ZKVcYmQuMeEkBlY2Mu9hFWOo16r2peAjJWUbjzKkk4LdVed9Xi2EpvSRvq
ButGdzTP3WuhCOFdAXZQYyMcCADhsqSFXfsLUZvoNZplBJSUkum/EYuSrJwq1SGc3ghgA4F+XCL6
6r2pWTKpgV4ik3r8x7//xrnj0LEuKxflFdvCRPAjlIfCj/SX3gb8JtS753nbyfMJgBlORDEN9XHt
8w4Yc9/l+taYUAgLhxp6Mf9lPl3dJAy8K/4K3d4KZEj+SYvatclpGVbFnI0k4ToSZr02diHFNICr
AOMy7uI4eqP6/ZNll+Hxuqu6ld/rYdM1HTKGHmZZ8X97h+YVk9WiDUW5TavBtetoX+M2zWrYAPcb
AAumEVTe0aGk1dWTIibAqJDlg4mw2sQ+gg5IP+YvZ+DgBaw6ss8I0H3hfl6xxyuUJl0dXuM6tjv5
liGaJJUqLaeF9sbKpK8sTmGbL/M+Zz4VWU2QLfFdudsmZwm7VgG5iVoW8DIuziyLDkVZJTSb4GGV
XbJmEJ4zRiUmGFwU9PFYnMjSr7kvvqtNiAAxsRcf6kfxStHWdA67D2TjUv2Vs0hol7rVhASIUuWp
akfGb2sgj2KCxvXWPmML8V+wa2fIHkPk3h0fdyV9RxhY5DAgnGiGq1yt7k4vEn0NfcuCyIgA+bzM
34eOyOhSF0cBlA7QsnIfFV3TcoQvgS4+WPUEYjzNRrK4sNzuzyviPLyHGOcZNQZP2UNcONpBQpz4
A47rqvcTr3BNKmXrko01vOCk37gNnL5Hf0Qbkv+9k7Yv7qzVNMSVIXRz2BN1sigUDknqYGNQJs3b
w8xg4MSKQLE2a5vHHEh6x7WzW7s0Odj9GO8z0xta2JFEjcI/1U+BZNeRU1TrF4yq+ffMik4a6s1C
Kc3Nu6KOOh+j6/2cIluvwLSyigJB5sN92vU/4fKPJ/tUZdIDaKQGHxUj0RcpVr1oOrEX0CR20EKi
lYOuaMfsHkFj1cYm6yBkgyJD1GIkC4YwdhY7DBAJQtyKg73imXFVX9TC+BDwSU6kQk7gKhm4rwLV
F0CyMffJ828JOHKw9iwtftEj+kpcngh78ygxW4C/kNNRutBHLdrrptCsE8q+lHrs6XPuXma00DoX
e0N29h9sUbTxiFd29iHZYtPkIrsbxLCu9Nafaplh8EVOdWawqtpN9z+jfcFMiZ1qaZcv5rtYmc7n
XaiDAp02XV+I1bfEKw8NTOPrZYEAVZbCUwOO4MuvOy8IuTffIjsyaVFSMzSk6+o6BFPQcxLIoBce
OQ0wXrTLa1vQCT4Ifae4cq7QmTs/nUv98nIb+RLDeRKijNmnJlpbVjbDGnt6oP/s0Rt5dUEZwYr9
b+1mX4+bh2GMNBpfJz3LRxm340UKzu5TuoyxA1XU57f2GdHSPTE0lFVzIuV5O1LiEe2rs0l9t7SA
roKuVm7kXrS+Y9zhq3syYymiFqlFMJHUnzyrFAOpf+4l/6jcXFnS6bgZ6fpSK1fV5t3SQnsI0FRZ
J+7nTw5a9N6rAJUM0DjBM39mj/eh+wJKiui+bMoAosz7aS4paUW1wR7apqcHtdwukgkYBN0Ywm10
JUuZ2+QJayeLybzVa16gp2M9eNp43MH3OjQrCIGie35061wc9GkKZ8rXDz+66PIf8/fDH0xfj0St
pBkv4K7Hu/3bAIh39qLUS8j353UdpXjWtcKQYSfC/Q/axvqcplvPgCccJc9glk2CuyiTxzQEbTQ9
VTLYHvzICKnDzsgnZuCFSI/nbRpt2NV4cNQaoVA7bCwvnTF3jk2kBt0uWhIMueYORh/gImMkyIQT
lOdSutmlSxZg0mXd6gg82iawLAxjQ41HmEbshLJgS4z0t7tbTzm5ftl7mc4ismsTgNMk5LQeNEt2
0x4rafEC54ZVHAHlZ8n/7EH/TTGLgG1qYav10oo3cto2YaTi3CV5oH2BP6hs3VF+dWvvmZXDcFeY
3iKjXIAFjtCLOiooFXrnwMWEuV/0pk64huuZ95Qe19Ap+dW9Xmetl11SSlQ+hATBkxB2pcz+ZtPC
3LQqbZWHS3bh84C9798If8pa3NXRHFbrj2u5jr1ktmXHQjBfrhJk6wK+OmlmnBD6kHj8Ea+0IT7A
vPnqby1661rIHFTJ5Yun236r/nqaesXfymUpco8Rdqz7uepptPdbSwo3gEvA1nKLhM1SaTzpfYMN
d5pCGk992VDaM1H+xM0Os/BdxQwCLIaXKhrgLxrkrre3Tx1Y+5OGGSMv8U7/ZmTDf1Y857F0JvUg
VsNvmKwh8ZcOM3c4MAhQ7cjbG7NADODa2NHkcA9OiskNEWQ/D/nzwMdlay29VE8qY0Q70kFeOrFY
LJig38QF59ebsesjlk5km0ciFbHHOFC+29u67KK96bLaoxwiwygkPMrc4LaO4U1s3K6wRO5/uPMH
7h8Lj9HDTqvNyvtf8/KMmPZ4J2P9f5jJI4kCDZxjycn5o692IWQG0KV9Grp7t3ZlVrOiTQg8Fiqg
lYVvaLKbB7r1fI7pIS8QbVzKbEfGfZqa9/EQjcWktruquz6mHUYwXv+I6Kz3MdnQrun5D64S5bYL
tJ5jpO+zzRe4/1EN74yjAGwFJlt+kI/uAQW+yJbsCW1Q4nA4gVPrXFW95lbhpSnBjDTPT3/guMEH
hAB8aOFaO6lKjJZJNe80OwVWdOHUjvi0LmYLrnkrUrrqx9rbtTKAmGlYPuM6HKa85Bv7Z5bOUlRt
8knq4MkQtb+2g7HaiexCjNKVhFBlzJuX+kt5HHm1+acX+aMo6hRNCV4KX03Z18zul8MX8IYUHM0T
99c/+ZasYqvWCjU+BJGXDPZCuRckVUPyHkJx4jVzSroPpBeacUFhWVT1R38KEsQYBpCjiwaoe1mI
FeF5nD1fIIkAhJKoNIgpQS1ZP57Ti1TV3dXEKTSM+um/iE1UPLZo7cr6ujYxVHfxXVyR93DtAizD
oj1GXAFF9CEeWp0SgB6GZbWzRxzaU8SAVXkZBXb5JcSJFCTqOUGwI1YpZhQHSvSwnlbPXGQlfD2G
Png6IEzKz3KbdgIGfZsmJllEjTeZ9BX6P3JMwgi3UyEoewgIwHvbHuofvK9RZnWvTKynWvqvjOp+
FCI8Wn0ekeyvPeh6lKSRFTV07/iBEcsXCPYYFR57gntbCM7g3zdVWZ10TrDLc6+2udTeg8GIao6t
eljrUtHT0DKwiAs4+y3br6Np6IJ2tcw6ISD8ddP+9MMS5gsekOhH9Sj1BiwsmtDJxRGeppMD5jgF
Rr/hfUvR62MhYFr90WrlW2ODdd5AzuBKOGHrth1Pt/iceg+U/gVF9w/XnKX1ZxTEV0iP3z5xemPN
fqHyVa23vYd5hhvJGB/TncnJScgT1q3kGSt5DwyG93wKnDshPKD+L2wWots68xOzdb0wTBQLN8fa
xCTy8s5YxIDAIVdpgmWRQledOhzMbqzjwiItmWSEhDjI8CzkArcvhnweMitvVDuq6Owp8DRPzSHz
wmTO8jV5YmGi2BnfLdYoTZpGXUbhkm9nmqj4EWv7rWNF5ueaC3N3S6SEYf8chQbl99lynGpifdFA
sApi9NVFRcrcZRfWaTUM4JDXl0Uaesq7YzFCYq2/g4cojR67ecE2eNykzfUYdzU3NKPKL9ntl6xd
rle6LO8mcd/BBR8bOL60eo5Qq4yGci/wrtwjeMCsQNav1Swfuv9FKTP4ftQZu1cN1uFYa+1o4FXH
fU9yUBCHiGzY8rGETju/6TGaBZtg/Qgf9WQnKsK0yhrSPSekZdiFNDRU1tVaO5VHB03qEfbwlL+9
tYqQSYC3hy4Nuiu6YPDE6txL+3LDUKsaB2rEdoSqvh29ajcqTnvhdHvHiW/yelYOkrWIVjAHt6Oa
3i7b/jUer6sG+687syqARsgneUOeWDN0OBeYmd+GcqHy1kuTom9/bO6WSouz09RB6nF4jjKn8tCf
4kfMF1eotbhMyQf3UXlp5nM5xEsyL4fKGAzqr522iz4DwMGxsQNrrwCKmlbu1977hrZTAhLMobB6
+fC4N5T83ebe77ja1kEFkih7Pqn7Lc39rYIfwt79pKztIRqdTXmg1sLSUybggPQpkYk7Y17nKo/n
zJ5oD2U3oZBzzv9pK8Jdc8wWoVl0G5QW0Aktrli79f9h0xdpbKZ4c5ryzwmhjv8uPFXF1b3cDqFJ
1/vY+Vs+W+EfBojWZFwSwqjo0tVHL9iKaurdIFIS4VRur3ruArskJyBv+W1YInPodEg8MWSEIqXC
b70kG8v/fk4Lm48WFxeRkQ2oNQx8stLO7c5ZtIRUaMlntnOywjUK4Ola8WLjSrBlumNrY7am0hBV
lmPf6LMts5Qa26zqiVhCfYpiQFpbVug1IqgQ6ZgdYRlTydqQiSaptYqC1eQOIXV5W0upwrlFigOH
kG1fJ3eygLuMJ0axFmObZqjCGFYJ9tEVmB1ID6Y2In/g2FTvoTeWxN93Coxj49TcLUPYNcHStS1K
3dUnQA6HGcP+bFwloxIWNOLa1R3tyrpvYSOVTT8VyUTecT9ga/cgJtPggwkk/y+QxxNS7QstM6Gm
D/Z2rijAmc558/F2WXp23M06dXed3R6A2YLRQ6jvJJqNEyeegvqsI1bHTxq9H4jw3sO2RwtQ4Jn3
7J8M0ELcgR3CDXsosbPFvNGpqGZMzitsT3DvdO9fc8tnAF0SmPrip4K+x3aOCnDtNPwcp981jJCI
Ud6XzyYqhiQOKQN2x73byvZwY8uhfq08VJOnQMrZSawUg0sSwvDUGv+jyfrRXSf+Aq+idDIvsYVR
5yr0yydts/cRMHvO/9TnxnMWyGc/wQ1USY/jRqRrIgR9pQA/WC3+KEobNWWQX9C25l2NOFrCpFo6
Pef1F/qFcqMxMtNbVLAOAmZz3pkP8WKPQ72DQ65VclQ5/G0UA4xt4C39DHtexD7frIVXWTCHC/OJ
ttRK3OiPpZieGY5Vawi9kkNmX1UyTke2dTHvtKox1hHUvW1biPGnWiPZZjIKSCOMdLnygOiTIWZA
fOhOggTixeOhhAbDoWnek7tLYSi6iR/XeYyBurUXqCYV0jZzY/hVXgJmf3KbC7ARrFjg3kAvqfWA
FB3XL2/hn0NSKeu/KmldYZiIS4BHtbk2vGUGxcDpSihQd6w2mBcwRjSguT07xf43zrI2Vm44ppYa
mFj6Zg8ncwhDqRNIJLrEov1LAUioyauq7ClTSmfqjFjEjTZEAC1PLGA2btfd2p6gyLVDx/JRvshj
CoJ0fUcOwYqHzuZ4HjMNa/baLDSi0XeBiI8X8pKAHzD892SurZQlZaw8eJ3AXQ0hCJ/FsPuY8rhY
Vh0YV7/cfol/W6ojmNEac1sUBNDcwOKt/yNhBNLwkaSIKy4=
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
