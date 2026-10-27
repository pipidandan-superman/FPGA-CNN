// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_6_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_6_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_6_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_6_1.mif" *) 
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
+38CJ55Al37taraU9UvSX67kI4DqerAGofYTFjkh0j60fKnD2H9+jyT94By+gityh90vd4V7wDDL
8S8zSx9XqiNI7oRfqGefLl/PndWlmjIIcU52I7YkiJiI2QqY1cWckUYYmiqJFIZFyPu6d6uk+30e
x4OINS/7vbdeTVLMdPl2ocTxJb+PLeN0Fxk/0DVxrS+KjWbVTMGydlsHdmV7/5Br26GyAI33+60D
2zPtNZkrN0v+wYeHYuNiGc+q56OBoHcq7b5pjkcdtxw38QMM8cw8/WpShfx4uLncNf5CqXFGCjO1
6uuO7bBw8diMwUvcC6NNX7VCESQBaeXgKxe/ggbpoT385W5exUXwxb7/TaS1Miynh6Ar2YXLzS1T
E0hAMST8hOeavHAZ/hxJbkbFKX6HnycpviCM3xpIjZ1z3u7vTCHCucH+KvY6yroh5bRUVuYwXSLd
OrYzk1LjjuukggyNavrTBdiMqYArk3lBTgXej0A7FyFjJqf4Yf8n9feIX96UGiEb2/Scs/roUbcj
je6/PQqFsE9GuJZR98UaKLMUvS2JUi0lVd9SJgc4CS2fMpHz/RG2NujjPSWZsiT5lWFQIoSWRXU7
kJbEXhSUlPvm6eaPvYS7XToTrVTGcrnOSKDDPbJroR/7aD7UWIm3ah7hKp+L9JC3Kv1UT/8Kpug3
aISt5zrTueE87/4r5XyHcELXsbUTerCmVMQ6F2awvh5x2qvj/c97LmpIaOXUQzatUpCp+hYgYo1R
J/HWisS4BZCJW2/zUU0rPf72NGxmxWS/Pc/H+ZZr9ThfSahtGw68McSqHMvhttMbRqN0ggciWOeM
Q7hTUZWxyxenjMESyhFLgAXRP5wuIP8FdGVzwQ4bW8c/VdULQujfEsrp7MMJcEH6vk0aqgrmIq9X
lM+7BsdIVvAUDMhcW7vHx9f+c/68PME1fz4YtviBYRZjYOX0HRBpfLzcAN5PcYAA/hxcdW4jloRC
e5n/zIedYCxHmJTQ/aTeL+JUVQ366F7S8xZUncY3UrNaPC5QxSYDbzmPZ2EP7z7Y4JHlSXZMyyC5
XM3n3gggZS4W+uvk3MEseQAQyndhHoastlL6FeBGTWYlxL6dJbcMlWXynMmzMd+gT+0ldge6wJdz
aOQwS9ttQoB+djVz0HJSCvew2cbQ7/LPTh5XCngVfibayCT57nJy+RYdSzUN2AzA9Da8Hs+7Rp4t
igo8abhD0aXTrrmXjLf4+Ewqh9aKTJaRUBQBrgDfZ3QCUz1Gi+B/Zm5ItzjEUUa+ZeQNaORsCfRi
mLzOIFBJmNoK8yLWbuuUHjKGHqlBmbHbU3xsxG2bYYzMW9fNUlFGR1q4CpbT7eXdLlvDpaVz5rIt
wGmMcp7/+cIHvcYN+IOfP7wFuWpg/21yLTHENt6paRBz0Vhm+E1xfaquNJYNst8ZxyGOUAbzcOo1
Crxiw7hZXu0sRzGDEXfEqbZ7K9k6bu76vtvirKDyk8nHRJuAyieJiG2DH7ruGquTSvuImCdN0xfX
w9gg4XOS8TCZCnKLvi9oq6sti4hME80Nvt7X+HBwT6/dS8OKigewLPG+UijpZgB0ue1rL4Dq5THM
KUOclroIEe8ko0divVR/i0F/vChZGdKk1Un84fhs6Az71jVykWbwZWvPrHSh7Uz5NSv1RWFht345
Var/MdaQ7FTBHeYwI3yp5WpUKrLHvDPoB76osZuVK+UgyoG27AlyFiPRY1I97bINifm+f2jyAvQX
MRSOSHYMfEoDzM8y3zjn1PdKLAukAarO3nlDwNmfc/eeMnDoCPCz+mIlm/PJR5Kh/e2VL88EHJPR
9oT+/CFAhyhUzlcWzspCnepx2s+S2sFFvosLhTqRe5VjeEQ8XVJ4mCVIGz+A6yXYb/2aEBwJRxgj
4qCacx67VJxKZOnGdpfwxYBTzhNmI2quSCTHTGGf2HuZEQiczB0AHzwbgJnPRLTrnBRUuYJ2+Mr8
QiH2zOe+SWANRWchGbchUQaVZDx70vCHwH6XsvyZTb2Vwtsg+4ZH1lRozzohWHtg2xhsyLiBdFEB
Zw//JqkUIzdJQkGaH3AG6df+tHHOvprdPrK84u/CyNZxVAiFVY36GLM2bQtjg22S44eWZ8Gdp/A8
bDT/naF8S27WD9ZqsPMKfg8PxI2Lt4eW0tPolJdSImHempgEaG1vMU7GWmU4Mdh+afixAZ9tRGu9
NpO7XTsMtfStunlRZLDWwXb/Kxk0IbyLPm5mJrJbdGR/nK2dWhHo+6eX0B95RHvygCFl15he8mNm
hTX+cQ7xuUGMoCvqPTbxejx1e71lGpSkRtxQokCZXSirbRePtzttqkkPCdFIcnTrlIO2s5N8BBpR
8YqAp1ipmugbK6Ng7ib2mnlbAe+yH1OEMAAkD75LAPHbYqoCWpQKEAR3ezQFZ+qHOLmrHl1oQ9z3
/ki62nYwV6Qb1m4soWiEGPwMBwYOh0CY0XhqVrwi/YvwAvqMCh2VwaS+LDLUcAvkun+jLPaSHERx
lMNJqe5dg78r466wDz74vopUF+wnCJgQjl7k6lvB6cyuYxtFe4jwFxvSbfZH7eUTMrslKm1nEjQa
swTBglKuHARUkspAxmD3jotktULF7FvzF8J+aeeMj2ypF9T8k6JMT8u0gIvxukPjBv3DccotEnJc
qJI2o2HEiMK5AEdVPCRxTp45duIOL5RBjEfB2l8yrVxUtO5LQyI13XX5RbHaannjXnG51CjxvQZs
zwNYmDiXMn9XyMDl8Retn1nu5OJWdv+8bP+Q9BmFZJsZVfWhu1vY2paZ6Fh+6zcO3oYvjyz5/wLh
Jskt+yg40ezKgfUV1edn2LEqS0eKeXuhSQkxqEGgG9VJZgfAf02N43X1E2StH6ASTToFGv2eTwib
ubLS1/nM664pgCE1rHEtjoKMvkZhL/0y4D0Iuq1KI4ezn019Va6t8lmx12/jfY9AZYHxlIWNVsvW
gAY0gP0ORbtCVdRZj9wQizCpYV5cvIY7tRqRHVB+Pn1liOcVkP8xTtwN7vdZrNmWmPCb9cfvzCZr
0xufBgetYDC+r+x29y23SauKFI3gDrBufOHEODscd4jzjMbMRUTh+LHkj8y8KyGRH5F1rbD8ev8c
sn2+aQQibO754si0lyfCuz6E8gXmEF2zrhFQnZH3CJaiJZQL35WdoQRTqn/ejYBZvCeL+2Pb+Sko
cNoFXXVZUec/XnLkwGTWOMo5LFuKkafkmf886jhYYRL0LOE73LoTnvKeV8b0/rV57oBj+cQejGai
VkrWKrFhJIySnoMjtbmtO1tEXbVbEuB/Lf94JTGEuybvsm7UIujTSnaGRrySmaFH+/gL3CkVyjHl
NI5BRQpiSYt3MR/+4/hGuFXPYNp7G8zTttzJfU9ieWOcnMgPtEuQk5aCnAK7saOlycj7eMbTE2wh
KmXOWW0SNdrBeMQ+M4RnM6RhNQ1tfuNfR5ImxVnqGbWtv6ZH/wtj4x/CKomKMrKuKIBeiohCoydk
zs1JvRimB8PGQ3SMbojiPeRFzaG9lM1rSrivV1X3DvNfBqnvlxiWaI8p3pUMzLIVkLFX3OnyC2Gl
N83p2tlCzrXj7zaZm5oZSmIiLY1P423O/ZtQwRtR4+gBRH8phiD5ywrft0dZ/loOa1sJzBk/nS4x
ZdKzBbsyxz4YW7KR/A3ZAJ4EAwlbpBOlAWBfcgQOqHdRJl9ev/sjmamksywfnloStvphqokXLqHO
vOtGNG28Wef4OtYKUmXaR5hzmDmXQpqCs04FRgkfwZDBK1wl3ClIEM0HzjLM+occZ4TrYeUvG/3D
bCCq2PScjM1h9SEwupB5ynYIpNWWD1q1dLV4vytv7D/8Ic58gM+F71OaVp7SvdsKZV6xFabgNM2K
efQI93pCMHZYeONOSQCuXHtNBkwoLEn+lh3UV3M55cfqAyMelGhbv+pF43X8nCaNNnOvc73jmN2J
oFiGwcy4pnhGtAZIyTJEQ/7fFG90AxEsi8xHAd1k+Jz5FyTZczpwoVHebytUi0WUMA+1w4z32iRg
HKf/YXqsfrpqI9Nl4EVCLMgYYFZtr0KTYbpqT2T+h5fZMi3MQo2w1RkuSyRvbY0/Fm4TN7G/wfrm
iVfOOd3qpsocyH3Lo5saANgz4X5O35bPBu7ZD5ApyLC8mQOW/3Nk6BC//Ie7KnJkjjTDJ9O1PaIR
9PhT7V16b0HRBLQwoEGbZOLfUs8NdGp1y/4H5gxIEoTHyMCgthmgrzbZi1LlTvuqhqd+cnXArgiC
P6OtLZxcfKSwJZzTj6lQgMTkSxyhQIzD27J6I+ZfXlNm36iZRWCN/JuOpNQk97vf3BIXQZ0Gybsj
g2sZkpJkRmrne8jEZ2gD7Fo6qZtoeooFdHVRtNiQitVzbqeJJFUTIwQqaHimzEB0mzZqKGDRJ5VQ
Pjp7+w97HhSTX4LHxDpt1QhkSLvj2bjaqOy/+6HwPjPbf0yTKh2t9Gj+EPTqBN22FTD1mvmSZjjQ
rPoMmzZA/8zI9R4wAbwfOuAHJaaIVRkjcw+lRMtw1V1LJUxx8wVIzoTf9WOoEEGL9dbn8tNjaLl2
WJC9lJ6zITuALXrDGOvMisxAC30P0Tr4YCTgoEBC7LTITioKwS/DQlSHVAn6ocAksDm3ZlT4BvQn
Euk1ObE/+5jKRZXg6hajogK93fVu1kCY6Jq/+4M0lAGt5+nRTuZZ4D0jgPbutvGUIijE/8hn65HZ
nOuD14Z4MOyXq75fEyO95q6wcsVawT1ZOJDWBhqbf1erI1jAfwNj16WwEe2O9THZyDCAyyFepEqs
HsTUbtfH7QDEMXc7TilQ4RayKGOeRACC6c+zv1YKckSFHP1e/aGOpfC6xUQYgYhZq0daAyi+Cuwf
3A5bd//v+w5Lv/UW0JO+xCdB4rK8yKj1a6T5MwqKcSSvMCK295FlpIx2+Tnl9tlbPeTMCQqcnji6
XOVEAljwzTiPlNvqndvBQlP0eUq4EcInJHs61//hMyAhauyDZGATyu5Yb5q7awI8oML4Sbxwk6rQ
FJOmgdx8WfBmbTScAd/twARSNhmmQYVixxQzEHfDDkgFq07QNU+n/Df1Q/DOpRCnKb7BjrY2VPrZ
RDkvSpYmWJnpFOGsKQlUWoNa5OJYWTi7D3iCc7M7wUNlXrJWAYa2VyIwaXLy8LE+XVVzmbjsCOKJ
zMQZpLh8yNzXPyeVNnuYOLXEvFsWODQmGAOuyUfitYDXBpAgqBbGQ/BjMuagZG6zMGzSbB8a2FWn
OqvypbmqO2WTtlRmJ4+Nr+3qhIJxndcuI9PPURq6DFobE3d3OLGKnkcNoJtOmQLYm2PCRYkN2/+s
MOC+sQxEfexJtJQVIwgcM4jCi2LE0xRSN3QqQPaTFAau5mAPMc5ixzLzT5Szu+tyf8bKn5eD8kLH
s6CR08cIVxxERMl8JtGtB/SCOq6RD1gthJ4DttLKHa7pNksyRkRKDRSVVAiyXBcLtCVNwz0efv99
ONRAtTgdU7jcU1Hsmf/u++i6qvfaheI+NxSPaOkD8rWKypV7bLsluLjzYdwRYgzML+NnmEDryAI+
Z3srk3dRUJHcgBXN078iJtkXw/2LiAyua7sC+RnZD3X9nx5osMFv3qzbT7OTtbbzRywfCKYatiT2
OD3oSiu3p9nb9VadZgS/LpyS0ZVi3DL/hAuhac3OYf6N8JL6aoRizG4mmKj9CBVMlFiJdo7OSt6C
Ci3X1MMLlKcUBIibB9o4eW/9j8fK1kZDqzC/+bisS+yGndoRj2BmK0rrNRBiIgUk3GF0j7LA0vNJ
mZJitwAxd9B8PrJvsUZia8U5Nt/fpFt8HpjPV4Q7rZPcgYm3EOPZC3DtwzPfyI+xxfmcpkd1WWZp
g4d5iW04Qo4ype6vN3mNMYb100jvtbEBDRnunwwM8C7Dd6Yxio660RVBVMojy+Ez+xZKcGmT99gu
FC6lWIHNPzdiDyd89VIVHTYrY+5lCFm/+BmqGGUx+qYYpJiO0Ci6VQldtO8SriSJQXPaXe/bWr1k
kynO3oQVgn8Q6FobEj2DQ5jf8ZiYkvBVRgmL6Bh0dpUgHsNW8BTreDb0E1H1VULUMrjj35wrHsIq
xU5LBCbdl+oo1yJkQ5H9Ep8wJCsb9nLnn7NJZEDlyvURccNL3ZGFmS6s+NyWZmBy/8sB6UHQanNB
bD+w4p45RBqVktl1xleO17Nk5kRefPSq1oo1Du15gigQ8ZNLVAtMa3nIqliNmjULMeLc4u73rV7N
yRPGR/NhwtPVuIbg1ZY3L7WMSxBYt0RY/N18fDtxW5EGJDIwjyavMsZ8RHKDpdcPx6qbp0UTTIBj
OUULCeQ2SYhfjaWu5EAhBjnYuxu6SpN1VqGlpx3OAZh2Uo6p9UqyReAlphOKcF3YMvdh6Cpqmkdj
BNs6plw2n+i5PHVpPeIbeiLKJsFCf++UzJvvEMFfq5JA21oU2oxEYT8Z3vzZCCeZQPTUWM7n9kgp
QrHvIUiUOKKpKztLfQ/Jp6i+2mEji4Y2zOlWv8v6JGO0I+YK7k1W+2xTSWNXnhUusAITUx5qatWv
ilIXngx68ztciW3mAYD5nmtOSsj677usrafcd19lqLNy4tefBR+xVwLmJcTmgydN3qu72fDBIlG+
X5Zb2QjXaTK9l+zUrW2IdHlVG1e9bFBtmM6Dbpt5vPItxWKRXWr3Mi3euO0e1ZIzuPkYTHQmb4jQ
UUBLC0gF5R5yzwOo+11cDWavDNsZu6KZOGcqYuNDCwDhcjhTGxsiN2A6zYYjYvFAJ+Y/Fz2hEx/+
R/UuqME84/aKTqV1bWhE2o2RrC6HnozRVk1wnrP8VUuNplX+8Z0LTQ+Vp9PN49b7EfdRvj52RLTl
WTfyBcb8KoeT5Hk/QJ7jUgadH/iJBgampIdw1CV+Od9wGh84zZTaKvL5C1q0RKu3iOkmiOJQGPYC
pdzZOw35P9xNPldoNe1Lin5WRksJ+69nlbST5rzvM83D7kMR9zhlRbF1Hj3K8ivCwP0sT2Wx6r0z
HSB1wxsT3qXOOBvaS0RQTMjsGNAdutu20dSJhUs300OLU5og8Xam97ffdBQM5tSFEN/NGWS3xoNm
LGTaXpsUfRS2cAZucDZzXT9JHcwI21SKL89f01UnSn0JDT2vmnbJ6p8hBeqwYYgkPselmB07X84S
5V0eDw6w00lN16Qy6iqgGR8aRM0H1kavvP10MtaXibY5FqRwm/eJyEkO8TeueYJssJmHPJ//EXbJ
/5icJrMwQ1UY70Ip5Bsk8SG0AW7KCZB0VwoFfNdIzbWaG+KHkTP4nouKf0fyvVwTdTb6jz3lApRy
ukiZkHsfO6EmfclmwZt6EZLMYH2y1JU2aQdRFnmhAszqLkChqGUfWt7OSpUwDrbfh+LAuQVMQy3N
d3p0yudoIzTrtC5GoklXk46M2T5TabnicN/Avvpkr7ocqY5LgMZEwvbmPt+ghZcVTLWuhnCYQmXT
zJTM2KBEnajRDW5fU25rTnFx2B5tjcmPJVjw2VP7wbe0Z3qjU1sudoo2ylA/DsXtEiwHNIJ7dvTp
UA3UsIxBR2q8QufMVe8Gb+eTrDtO7HEGYLxT1iukVi1ueCW2IzQJXEJTmhP2ID8x8nVqJMjLypb1
CW3NwgcgmnEvGVxsut7MCY1IlMY9mo2S2BtQn1bIjBoGdTessNdK2AKbFW4GAgs7z9q7vh3NSEfC
UBffpvNUTDM8+BUmVPEHp4VLu5Yle8G12xAvlIS744Mv+nrXxzySjsUEadGhIdDlSTr9+ukng+79
lTV6kGc2BNHomxl8S//OLrGSIhNRigFajE14Ffl3DGAX3dhApErZygU9xX+XD5IiZNs5OoZSLs7Z
gsW12GFh8WPlzvm2qFNprQWKPTS4eifCPbRYIg7PW0YWQ1jz7Sw+PNzmuyb2X2VvRsXp/xDRJvpP
Jjl8n7zzJrtBp9rp1OCXwj+kFHQBik+N7Xk/QbsVaLHndQrALfkPBD8nmA3Gd5gV02ch0iK5Alk/
HbZ1S+FSlevmLZJEbEyx363YId/2TM6wYmDpFqFPFCkbOi4i9RgoVdOrfrY97F8QOTouAQ8HDxCS
WJRg9QOMMhYJG21UZpnZDZfpIrzDyIJgnyXQ2C4aTawnKi79JsuficymcklU2lQlwB5OEdNJzeme
xVW1XjUPa3PxrFLwaiK2pySWQD+trUtMw7K5UTbi71dhU+kmQysxy2r+UuOq1fBYCAcITBTLeoBY
6dNb7alWPt0aEFkCYwrhWYJgWzUKXJ6atxwqc8ilCa8O5VebxauKtbQD4+T0PjSPBT7p8SEQgcfG
Q/WlCd0kC1M6VqPAR3cEOFtfMSLJa/sBujnxCSNibg3wvnK3pDtuR8cjXYpQKJz1oxwG9S77zMdb
VPSloCR9e0zeY2WR0Lzq9aS94C359gYH1dLD9c5ceThGSnpXZ4UZFSIXZmxcWxxWQuFJATCyHOfL
xP2sLOuQk90Xnr+pJ2MX1kKl5LXAIG5sod0CFt48soWWyp0JXbZ/xylLqFB14PjZ6+EwpmneGs2B
zcuPHdIAviEWcH6ljGlJ9QH+8fDCBCHUcX9kNTeZrpgHi2olkkhta4MOKh8f/8QW2JYqIrlD3sTB
nCW91vTSpweBfaJ1H4jJh6xMgiQVC0MZaeope7ENcErHkJTlpOJ7C98kBy4VQen2O4ByKPtlYNJZ
44TYIg+/WTd1WzF8ffGCfmvwgJxd/Vc33R3rGIr3PmhPs07+BMOfZpL4mpCIwWXmJZ5M6gXe0KDW
HOFNWM2Mh3MGf3k6ClFgvBihL6/5aROTSAPWkdfQPVRoJSGxEQW15jfC1R/7ylGcm4usfPufny0k
MYHrsS4TQ3LqTlranfjfnuaNYLqpHlkohaui+K/1p1r4HD3frGaSJjD/qgveGvYiZcaTtyFDiqyc
X3aAcymenPorjJq/OlWEpQkmoG/BfOtp9d9gDnV49Bovuzo6ztmd/Zx/YiMNH/t7abCbN4Xx2TMb
J5gxfO+XKWaF5xFVxi9bSfysdPtCF4Ue1z4Zlnr0wH3C4hbZM7nhMlP1owxqslFY66ypUxTg7cJm
nSqrGi1dHYFd1R6EGAL5grfZhO0MeaIuSapYkv901sK3J/GkmVHzl9XPFq+eIuozT0hQl8LQgcAu
PpNFpkCsu75X+LtHVXWtpk3Sbz/y5ti5uYfjJLezeeGgc/7wQu+zgMxJ80v1ZstpxDNsfj6GMWHy
HHstr2xHFMeQmw3doRZ5kUpJMYv0pQuP6PDtYQvsZs35P3IZXAz8U/0UxvioVAcNIwQefZPY0vuo
z4TYL1l/LCoJfnptj/DGQK2g/lsf+znrGMbjg8oN6q2bpZ57IX3BqxsSCpisoHDNLFTidn+MOh8w
rLKzpMMSo1X6Y/aqs8RFVs6U+NgXN8nNHEoTK4m9eeoZhccvKFGo8yn4rv92U17yWm9czqBFleRS
tERnDwg1jMk/vZDS4oZLDLIOaeGu+1qigkFCwd+2t/PW2S0QzXl/0u2ctfgIs5BxsoChW7hCWFlc
LDLEbN38kozns01Rkqd0KNXK64fflWqPQkDYMh1laLHEqrk1rtKto9DnwQGM/u6CBpmCWjEKa4ud
Lv+nNNW0xjGO01nHHLtxhJIeDtU2l8QWkpjX7/q+Y508kN+e6qwhcZA0tvP4QNpvu1xxcyWFWd5b
JHUrM1eNKaAl27YDK3mJOptkk5n4uLjKSiE1Y7HbrgHQDpqZ34GkMLViQ5IB0b6jn0L2XWoR8Dz4
8wJaDllW1Nuk2li91poZsBikKgyJGruNRqSnwawYuSdKHjabhipTMmKdTB1TF9jYwZNkluzalnuD
8XSPXko/kYVc1kDqAtv2p5rFgS8ItXwRxH4rQhbCIDaRnNaVU6PHmCKdOA2tBDb9g9LrYY0zh3yi
QQkpy9qmQBgc2sYyr4jAIMHhbs1UclYiYz4np72yrPOWT36HoMI1piVPIef15nGk3IYEngF8mV9j
O3jR3c7rrVzWiPU0fmDPCZvigPmbtYRSiwWoIlw1PXhwA2rm7Ju21WZpN/hUUFVdC0XeIRrxL2wc
4mahHz+WFa7mBjNWeaYagoaxogboIT0YgR26WQRp+VU5Tao+hsgJQU4brDLf3mYByC48mR2jnxH8
9sLD4tWPuVxKhw0C93hvvNHtRskzDE1OHiOgjdTfjXqZ27LO/lHgFJObKgoghT8/sEvQ7Ma1516+
G4wGQOlhNKpMaQYhX9kbAgCR37gUNERFXxoeaOHm/zj7n7esKGAC93BWCYgIh2MuezRXJ8hfgPor
F1VyYhP6eh2ncv6IBfunM3XrP3DZRGRdMbtbcuEHA/sMpFPGDh7rE8EybUAA657vEL6mhTn7noAg
S6jPKaJr7t4rycvSu7g4znUoi/mSk06RL9/6Eol6MIHagVn5Fv/sI4MjHE9bu9/Liir8ZUqogyxv
xNFEVyf2E1WcgHMHkYfgdCIwa+6xalxPbTaeUPdOBpcxmbhYWs48uokk9HgR6iHp+LR9LGu19xGd
1fWiAh5uGMJrHOjKDsFswkqKrquyXaBGl/OGwTwXcSQIVqRq65KpkiFLxBWHVBlMM02hKUZ6jKD2
SEpdyiRNAYSHhSNHl034ukLeDODGohHmXZQpLrFwD8DSA7skLoTEEFuc6w9V0b9M/ZhMNVRfRcJR
Xoweln2NmmsCsZC/BSA2BkNGxeTWCOT6r0lsULs3O/XVNp6wAJuFJUS3ZcROXMILrlHjy3XVcFW+
bux4bMMb33VtOrn2f8dCTB3KcsvSQctZxJS/ExMbhn2zJQZ7g6UD6BRGPqHBTQ2wQvHDpx3PhuUG
dPWQ+et07vQNBr3JkahTtwfQbDKami9IWpbmv7QQLQVszcJl89zbjRq0+Jhj5W9x7YRatcTtSyRB
+L/4WwZUAM7Ec2Y498kC57XVtqtA647J8ZTq94XoGipZvdnA5g+vBqVMnNrSOZm837tB2g5E2v8R
SegJZpG18v0YOMnb3ATfohqje3qY1ML1n0ifwlL4hHPLQeCAEGFMJ4NnmJYIrI4QZNyfZInFiZXQ
LJrYbvYgRAirByLFID4Lrtd0Gc49cR1QcKEyQppmzYeZCrB+pjJMLLimxuzJGUQS8lciizlmKf1B
s418XR8ShWVUGpNjXfEtUARj0j5740RiUIPE/IbsPcMfsLYcg5Tx87k2q8B7ikyTSVfK6B20yFCZ
b2Hg9a9QRR93Fx1U22TyAaSAP4GeIhjAjAg+gdp/hVd2Za5dTs8b8EokyRUM6W6Xa7ECmI/au955
bRkpLtXdZpYY9GwDT68yCb2Orlpds3ThFhXSlmjc2kWAmcZq90fkvcxoPAoFG1ZlNQjK4+I0z1sz
8cFWtlf6zWLyhxHv+bvYSmR8rcojk66U43EHmNPwgoX6MeGV5Zn7pxZqTdX2wNNftxsMPEB6lckP
z6scJZz4BXRsH0Oj5FyZDwhK/iesaWTidSKeVcPzrkibI8B7g6sqPGD6kllg5TODgInFK+5W0+uK
cWfE2bUzkgeL4g0LnDcQ09h+v3SgRSgw/2m+syZtlZBa+5wTQTjMRO+TKe61Y9IMRjG2nRyRpleB
LoHaKAq96/0je6H3lvW6+x3En3uJHkyNGiViSCatfodRvZwSG46TRmIyJvSRNpvUC5Q6THpEiWB8
8ffIn9jqL7itk0uaM3CGX8pvAS1WwvG0zPuCl9eMHVAoGE34HFAFZIqIUAGNMYzZpzk1//paeTlR
d0T0TM4HgIF9ny86Yi7yV9YSwBzSU1bpy3s+N+9pkeP0VOmOZ48u8T0OkugG2lJrpjukQQShQsDN
fOvyKPEEmdS832PjoVZCDkxYuJKUUDyfeT7IEwzo81gtulbVyxAMj1+cXS0Sb3c1Up+vBxNW6mbo
oFIV+3Bth3fKy1ZF299PmRPmLuSfRuaoFoGiau20SnUR+lct1rPD2w/XJWeD7R482czXoMKEe6iF
hduvsFS5M8EEIgGOQtCoTeT/qARG4yuKADqFd/fwwDxAlVxeRUdmazzDdwC31yHZ0kVfpt8AFK91
j5/NrhjyCkQe228pMIUlLm9uLFSu+d3xePmq1bkBWWL9v0uWRhNVZtTl8xITthEW1vobQ2yxk4TF
fM15a3YNvCVL3i5vV8kSdv5F5ND23wfXdfCxCkeY/H8xe1t0f6NQSvqHrPWWzl96mlS3RylnD60N
OnlJ3SWc0I0If4Pjy4ypEGYhrgKcpb8SlaA5VBh/0Cr2Hs4KWK/DnN/rT7yaT3RP+PLjKKgtEdqT
xR4gTfqce+ur+SQ3VvjbqqDWmE5Gs/eeA+KRvPeeYhBh7wEIVdKd+hwQFnkSnveQUElN29qz4xlQ
x2Te7NaiW/q85gCB6tBp8Dyb5Du8OBHseoZxFvwyUEw9kY/1dA9Ij2PvP6mqqTlFZ0x2U/xKDNxf
9zgjJPQ/0LgKxPqGsMMV43z39Uv0bUQDvWXeWHM8OfCU/WFMLSW53FCi3qpB6ua7adyf7eUo/5Mn
0OpDo+fl/JJTKO/CgsjwG0r7Taek3ePZpOabkL9GQGb2J39tNF9ZnR485j4IdeLA8KK49gjNNvna
nChYLPES1/djm5JiNkOOW3q53bLaqecgPODnCRe5xWBv9efrY6Eyxp97ZLv5sSDNjMI2/aMHbOPx
K79FViColcinnHQGjXpLr4W+EyAf70zuDTRtOQ5EAA9ymjnQD4KHMBX1jgCccg9ULuJOQRFysOrI
kVNJwDfvBRyv4zLycCvlgP/Xl1REd36uc+X84WG54roQ2bgGWx2Y0n2pqttnxaeDloLJuQjYDfVS
OPzlVYOTINigtLrq89Rh8fYS46Wxu51T7228yu1+MrdJfLH39H6+3+QSo5smp+fDintoYpeznPh7
79FEi456Q3Tr6iue13mD/RWbaYO9nURbHBljot+ednLlolQEwwwwixdz9oqPEjThToNc6DmeWv/Q
GXdaTGafIOeoMnrSVMYE77AkxZec9MlP6/CuRBaiTKeZEbgXcerigXYWrkg4cCQ5J5ftjvCJ5oS3
RKe22QGZ71fO2iCjdsnIIU89WXJpNhxwtvN81QI7qnpjhaC09a0ZYgCnH62C89tLMNIcHWJe5oZ8
MazPCSAmxNZLQUFaD0Q1ityut+4yLBSLFOeoJ8tob8pN/2XGI9oj6wc6N4pyYHrW8rJTlnZD7cxj
ig+ab/hg/cvIJkg++4RYF9ajGfxAfcSOiUCMkbZ3pGbfrig7I6thHoxof1I/MIO1k3Z8NupChwYW
jWXZLsTKgrhlUG+E/KQ/9CYRTgoSUrXpfbe63jb0l9M7kw5rqDIcGtWwgXgCDnG+34qeQHzg/0tA
QSh6dOyu2uyxq7uXFpXyEJ+F5Ut/yNfIUKWfeLo5RDWepgo11R/mck1Q277EnUVLCaWwQ9syovi5
sjJLzD52h/10Oac1S/is8FlT1Jc8aIWvEcWUQiBOzYbjxelnddCy0PfkLBw+Sp8mnPxJESpArMc3
v32Ni76hmTrRXcsWhWVsLPKXICz7gErQDLO8Vtp3au4eyypoA1+iT4w/3ykpVMJt+H6LuJ/9FINh
Yy1+/vrNyo6roBZPWb4Iv2vgm128UvLC6+uaqJfJYB5TfgIh/uUpQ4RZZ0uO9oNutDp7+c/6oFOI
gm8GBdSyRnglZm1ovKmFC4T+ZWXy7QIFMuKJDg4ll9oaMS6qJh9VSQBHm7KJfKI1s7QGA51iR5ll
7PFNXzEaqUnJaPkwhvRUU/V8WCiUX5NAXZrxzMZhe7uxaXzEXIEotZvBfiNE0EXm13mDmBiyEuJ9
kjEScWpqOgImFzTtSTp91JFFnq4YsUPzbGzmDeEsPL+RUVTI9+lUQzjIaK7NrC3sOxQxnroKOrOJ
/IN7v449pw28q/ymLXZU7U2NIM7T8sLuk5FsGhFJEcWH8Qoo55V3r63DqfrytOsjMrlILfKTYPt6
/8/2ikxII76imOhuBo1MNS2JzwQ8Yd7PBVzMX2drdauuDxZ2tDdBlQxkW0VqTEa+Nvy/YhzRLJCv
L+qjcZr10No9t8XD+/Os5Rs5JRHANwHsbCdfLQSLdO57X/dUgwGz6m3t3fexAyzzgt45+CHY+HGX
mKbDuLMVbB00+l6B2kfIhmlKBTY2GpWsG4IjPjsAbTVTLDIijxcKZr8+G17vuh1b6XGgei92vDJW
xvJyecVCm2leXHLtpogel+FKyOwHm0YuwSZwMT8EEx4CKb5zJnS7f5onFH/1vbKU5fLcrQwNhWM9
Wfaf3H7QwZsujBNbKHwvXZ7f1pF5NZzVSoG0aPWLNX35la05HhmuypS/bV25oCR17UQOvw/vTwHX
jnItdFKqHC1afuAXxwDzXcjBRgzn/8hTnimaXzFqhdXrCod6TxNeRk1BLJbIU8w/hCv6WMWmYzTS
vn4F38woPKaBC7rgxMyX2QcyB/8nVTDTXzmq7tJNvCRh63ScxTuB5EDxk8/YOnULdqj0j8/pD4g7
kIc+K/UR2mJJwHknHj6g8QQhJFyH8pMWSrBbZ2nX3DMeQmZoUcihpF35EM2eq4EoO/ShytRakOf1
44+3hcSCm6y5+eoXeMRiS8AxQE/vXHr6Yct9oay0qah4PiGldUIxeSdpFjHKGUNpfVcUoqqb/lX8
nhAjy/3FwKFbgj62/JdJIp4z8V+q4lUEApZW7eW5sWpUjoo89flc5+0voxffTykBqKKpyRKfPlQO
Alu7CbmVnwicKviaHcTMHAOcNBw+Yqr4t82zuvplphvd/MYWV3ZYRtn+vXineDBdSY31ylHUWRI8
KCDd2HyT+5KmyqfdDytMq3X19TR5XW+LWiNS0wQMUBewLLHeTvNKlW1wsYvbTKARtXhojoGlntJ+
MWKsd3lZ/SvPDtjYdfl3sEHuyXn9D90LPjWmO3t9GW8A+qCvJ2WWC7qLus7QkrRxl3+BFn4QeKlx
ZvHfHtR+ZkTmIRrsBeN8yS2Y5Ai/pg4mY/bqVwAWRMvXVFU5VBTXw//XM5tJiPSXTL3wzyIlPU87
5upFY3uZBR23miobD/LGBPR8kSrXQUEfqfvdWXAzhD0+LkB+Dm276hWBHvViDwxa9iHnrA5JuJSv
Ji6RxR8rbDk2HYp8SOmEKE2DMSwSg5C9jjz5ebzLolKFS2NDvG+lDSbu7GtjQ/t1Z+KFDedTnaTj
vGVTpR+xFqCX8LmnxgHNhJ+Szak/aU9qX+HJQloqtRbMZDJ2dGsr45fr18dr13NpytR1jCHSAMHu
rLGNGZHV1wvyRwp6MIDyZ7Uz8B7yLWw9BuZkpnpFwz+bksAMZHyNkIoDDp1mm57QtS8ll5k/EaUC
WDVjuJMYzl5ciaCjeC5YGx0wfQ0EXUXQR/mE+BurvYzDX5hVYG/zVaHi1hXiKdTYjofzAWgwXpp/
7S4W3IcPphkDC3B5eWsn0RRo3n+ez7sGfBJl0tju4FWIM7oArohioxtCYAzWGmng9vf91HGTfOEm
oJxvf3pnCKMYKDf7LSwpNqumrHnnpLbfT905BMX5AS7OsiDYglYgZADiZ8eld5TX8seb52jz8Dm/
K+9m7YOeSVU8pffehhxHkX/d3FTjWI8tox0lS6WUFM6ayQVbIP9iQceyPTMz88duDR00WOSHL79s
bsnCPuzDggqIDixCp0TgNx+pGZrtdNNj2cY3uXLZuJoxSV4QAyxXyk4EM5Nz2OiPQ7s21jc1acwN
JX6XfOa/U2b/8GLYwz/TfgmPJxAmn1++hD8BLLF3BE/OSL/F0hXVwlaaCQyVoaOfbRD2n+m4ujn2
xayeVXq48p732dTQ4JfMwllG851sxG+dEeSLUGGH3pXz2xzL4ZL/ufDugwnx16vuNUwxXp8GlFCa
jwIljORuY9Db5SSoveXQK2lQLd5MqNBntLy43FqmaAR9bvz1YtFCmu6ynVg0WzevjxOKSNjIxSX9
g4L0WfUZkf4s4EfGx63xIJQmoG2OAXImW6+iT/2bsmFmioRlXNJtSvoNWdM7JMyOdtdvHZULQ5Ey
bHAVQQRvw7YXFPswlJ/KUJDeThgveKE70OSlif4ULoVQeEzloBOskIWgwz+GauYTD2eVNLJxin/X
ICag1AAWO8iuiFR50Tx0o3opI6cXR5xXwSyUEeigFgTScl2VpKL6gfWSEDNZnxbfX+J0OzOcW+8N
94r7GPj6oD/hHa3dzCyMor1D0T1XcPRwqREGqdW+085/FIf7IJfKS4iIN6o1JrXcvGRxPNC0fshT
4C09AJBxEUqGYL1VC0HdWEBVVCsV0mFSEuWVfGCR13iMSAKt4ah/1g8aAEe/kbKheNOtkIFxZ72/
wS9R4ZKnpJynKqC1tiHp+09STocg1XFsp1slJN4rc6DisNf+w7JNFw0NOwMVolt9vUgYPDOmNkCF
ajGjRYPe7GbKIUWHNWclqRoLm1bNSmaZRaet0Or9umMyDYBfJ6hkL+2BN5kGDquZLmRqIsnxRfrI
T1EJXvyx6XoUASbYRif/UQlTCaerHSVqbm8yXzevzjjrsjlMyzOOLve0yxZXCr/SbX9GMWu3ZDVY
eRPJK6dSknX5rm38/CUSttfELndImNQSUJ9PvCoOQGK+bhpGknCJdU9ke6TrQwb315YtaqWrdjsB
enk/NjvxGSPzFYmYqj5EmN3Qo4XNs2caJvMRywTu8o9otvmqsXU+XjlV1yHB+uxeIleBPT8jTNoG
cfFoq6H6S6Y0qJ8NndHuKLDnP/my8ZS5y3MXtFMZVEdTY89iuO6sHaCsiFsfJSwQtDg0DKDXLzWp
nxo3NDIz7cYqLarpVQ1+SZbfuDKODO9gYnD0770tQ07TQ029xgBqQDPWigjs/5+wQ7R+pZy8rg+h
EKwqgLtbHYN7M2BuCIdVdHbOXCVXJXimmkLQW+eYTL1JEvScfcOresp6aXkeN3tUqjWjhIbucoti
egWo22E6ehWUgwOh/uIEK6pqbR6lEOHJpWCt9fzypYjTAi8hPuySuwQuBsIYnAOPESP8/Hq+9hJP
k//1yPXEoIXeIQy9pfoltuiPgwTSP8FzBnWXoUs8g9HpM+sdyc3UmQM5AppswGJOOZ/nGwWo6woz
UkGXG0IfwGJJINi3dSzT1MObTMy7XaC6tAQDQpuKSXqXFBOjjYdo9j35NHmKyYwYwxauTOa+/2/E
iRzjgVt/K6sBB5PJduUesiETBE9v1wK0Mgw68K5RQDnksxUj6VigOa9hwyXnaEw1r3xPFCRE2nfT
qiJFGC+T4ibP71YOHpGuc+urBLLevgirDlxmmWsT3wlXBLAH9IER2ibFu8YyHeRl/nFFy3tK2Rh9
fYN0iyUGh+Cvp30IMlcH/PU4T/74WfQQxSoziV1IDWWCanubBklpTInDVu5hFXDEVGXKzfwUd2zv
r10xHmkBqz8CcXMBxE4oPchU/rAMULLTb3ynkmO6TGXBDmtNgXHrrnwStfcx3R5JTYL1u3dFd2L2
fTdLuwlgvUWHyb75R4d71g4H2Oag1FdBZjIUrUWcST73iXNnwODwV9fX9TKr6/BOBK8d0DF5WgnZ
VTIAgwh6sFflxNTFfYMu1ndLOjfK6S/r4KnD5PiqZ1zryva2ujL2EPbOfVYb/HH6g2f4DYYeEiT+
//4NR8l+V9fGKy6Hpk8+gYkAxwB5dYk7qCN3m9qb+1Zvfve1QJ6luI9GkPnlg9Sa8j0RcfHXsXBN
W7ZccgtaStXxoAQdquq1UNg6QeBTVq/XO3SlOu8n2nYVj+pwnVjdWfO9m3kAuQuiYHtn84LlX+TT
v0VgF1lM2y+/kq6AU5NoiOQbTFijyZF3NOpZOdHhDc3mSKTrw0xzx1LqH2sK4MQJh0m3sKRnagX0
xmDpRjGSieZfETDGXSHjEWdelJ6DraEIIW+sD3mNc4XEwVFwSPKBMR+r2eiWGr2hwK9Fz5mO9waV
0TRbpc+gRuJJY9NuxvRczPhXhIGzc2ElAkUrRANQalBT1XrcSzFzhgHIKXBjaUzCjSzGrCHAjOIY
+zvKNGM96JtePZPwJ9YR5a5RUB/K69sqKxSR+uczNkoP1tMEx7GrbHQhUtYraKzVZIoRR/auzIGD
gHCB8GfPxdEPjEPvVQ7fyBRv7nK578dgF28X2h8yNAC/pVmk8qWzUht7f6mMoQLiKDizh99IkykC
d/qJsZm+urdaJKXugP4dmlRzeVKilx86a9JYJMfMcdei3vIi0qO82m9FOlKxSZSZCtkDwufjrCmZ
/nZ5dWOBB6bZlV4q0gGk2ZszJhCx8hnG5xoh29oGJWXHxhmw2mM2R6AuxoQT9AZMuEM63hpNipN8
Bx857BDrjsEob8jFilxOSqcKqWquXTr1H+NJVRkvaTPxWbbI5YAYlq7jXcbsmxGIMdBeIiQHgGtO
jlMN6O2zED3OT0Q3A0OCct/ypggK/rcZobHTp4e8OIKhHwdokblk6UeD4YLDk0ZCDnsEypxaNxuC
v3qWv/+yqxr5y4dJ6ijcg3CpD0XTsP8SwzeT9eLSYY2rIGEUVVoD3MEJAwoOJcBERTwZmfeGtm4l
q/jkdpyEFXtxWE9inRlEIgXR3B3kCCAXMlfgfy6cYmhc1+VbEo1lb8E3r9zSacNwWpHIXiTVavbA
K+fioOtJGLZ4WBukpU2JX5BtnQYMeD2SvDPAAmQYxj3MnPrjezHSq/45Z0ouNKsqsD7QQCF8CwOI
elbr/SWKsM4I62Bf5JdgxbT+nkv8S4Ocz8aHKVHmG00f8CWD2hr+/c1frPkxLZcX/sokBYjFOL9Y
DwscFAyAe2v7QC4zOfGjWSTzgSpTQrFq/tTrRXfErvbVQyUdBCKRMPE39gDBuhzvyQFm4Ry1csVz
eGcDUBPBSFO+jRWMqn0kgm66xHxcMuvXWvDYylfbyvn3syEABGPukGBVsaqv1840yiHhj8C71Yvv
8s55YBZtCUEcdw+VqED9u1zEOThuKiJ7Ha4G0LZiXnwsBZV7JNg7/mOh6CUGFm/sa1R+Wtcdz0ml
Bsb/4G053I9dodFKvH4Zt3V93Oa6rOf4ZeCLbMZhMTqlEGmvgeIOlfjDgEmniQxY21sWcMsy47AQ
PxiUpDTeYj2aNqd5tinYZpdFhChZb6CQfyJFOgHkcexwnm8memV6H6cWixBNXvBC7MUp9Dq1defI
KaCV/UkyG4VPApzQoBA/4tIX/L3qARyU8p6kQQuWwfWqwc6o+8is8oqfurJOvW9ne8yyesF1Ih02
RNd7OAprXovbTRP3pmc1i9QhKig1B/ZC4Ma04XwWJfVPSWLxj3qUhxSSH7/FIw7JbjEDkXtXlfeK
+cHjQ5/JFvwfuciq0noEiVYCKvqYytuyC9MCKQ8abwXfWPp8ZD/0C18qI2jN9rK5E4D2TK3d77LJ
5si4MxUs8uS0KFcV7GM41dp639JCNlm1fbcffHfNG2EJ8+pECSAqps27rkx13zuSvCBxbL6er87h
W/nEN4mE/1N5P7WBs8ly2Q3NcB2dSw6W9GVPTYPfZ/Epxix3FZ36SdYCzMdzYlEKCNmBqSXbgOMK
PM81eOgXoeQTrJ9VVCPZX5k91FzSRO10l7STFlbDkVjzs9464XJk5JqvxAD771xtMYCgCHZxF4r4
g7KqrKTCLLr0JpzEFKW/z6tha8icYtv88AXGjQ2Z1ufmBO4eJrERJCBnNfrweA7PWW1L+vSWF3QS
2amx2IpkjlwMUhvW/kMV7Mnk2vK67PNpKihaAT8Y+8mGibAAPuwUNW0Jpli9L8PD1CKaIczGlroy
NYJLpgYppUGwg7U/6QbgwqUwhBmyefHRFv+q5YH/wGXuZqw/8+jD4wv7lfAMT2+CXuz5+dIA8+V6
Z9LP5994cwUynSIltI5yVUNwaK2v3Mq8pLxoGkmEvmuEHvn7SILXEqYhrX5TM9y9FsY6rcBGvw6s
3g3Xt/9e7e2MAjBVhnolXcl+2SFzKVIJeuWo2E6VJO4TjppizcCIXl6xc5I4DpLowA/hKlYiuRBA
txlME5LUM/aDZyMGr8HS+fP21PDCaaK5DJZLKEe54ip9ouHmTm4yCOXzh5i6AW/nnPnZVGfwJTEI
PM80qCyOrEFQlexnM5HyOkoJk+K+64hOhBXXGYYirAR6I0UYah2RmEyVd1z0iUgknp17pXtw314H
bj4rNHHZ+uI0FSIG9T6fdiEMHZkDBWDBDJa8NXsCEJOT/xU9mXYWhOTiVwH0gwDRy7PQ+JGTnJVJ
8/4HLEAAy+bqn9WzLdtLzYSP3zmHzLyRr3viOSs7iTWXeo4rdH0CfrZ+QPBjCkiwdlJjmPIMYLWG
ppDtl8J9x0StbIYTRK0fiNHmavwA9Dg17Q5JjH9lfEXLkQenvNDhlL8F4PNs86GLy/RmBsh00gRw
wCCSBOEAyG+yQ7tpfkphGdiz8Eg37LbuM3gatSffVLjOzMVxar230kAV/hkRgKgUUt7VmWOUonlK
vAN+Qfc/cxAXEnAI6ZsdwkX+h+bTwUNDYRyvryKLKSfZFAo5QPrVGaCUW21Fgx+wT4Ox6YeX9cwj
WpSxkh1hvTVa5niPpRojTQEMBAH+DIYpDvx0ESyDOweVxncXVvO5jmCIpfqed6gXWO41ykjkcFWH
M66cA1lEofm3E/y5jGVQx55uys1iSTIt+pMDsr79w2WtGFKgFgVTMsieAQx4aMtNBbc0E9kyonEE
5OBFQcgeBmK1SOePEds8UeAj4XCHRWCFipq3yAbEpN01v6niQUYNCLeoYGmnh2tOQezgMMlKs84t
bleTdAjTztRsjHlHxDNVj0Rj2sDCyYJV3hO5iIJRGyLiCPJUTmFfx36wHO/BH2XZakarc0yjMqv5
87Abe5rNrg3OC6t70c9hVXs6KMkGyexto+qWApoI+KNe3k5TOQWPAm+E6gSwEEi3atte5FReIaOp
vKH0p0jXvoBt/SrXJlZtyBfJd5VOzba6V3xyD4Kt2ROgvXH8WAH2luO0pi/5E2fFS38XQ46m887I
Qg4xTlwBIJhvq8fePvhCo6iaFtSnMtAsrExh1ZuxdHlCfrl7sf9Wn9L00fewobb4kuJDCdL3ocbs
xYfgZuhWdVOzMNgdHoM4W594usEmLqfXM6A3I+1FLBspBoB59xjNwtkFtVoUo3b6lrLv4HAKsOyy
RENMNOToI/kdRPkYDkjGnhczCwkvPR9V9YhTuz2rX778WT5ZfNnTZGaf5u6XY0iUXemIsNEfoIn2
uTO8LpJKalJxyWVM/uU8be7L+2HFD5UCUcF86EbGqOvb6w+junfAXs7J+a0VmxmZRem/+lqdzknv
24+2cRlb3oIH6oMVaLigeY1e4jH1rCuRuOkW/95Vsnae6YKiGNDqi54vTYZOq7TmDyrz4EsqthhK
MeEveVKnfasJWOLEOobKSMSYomlOvXCxLZkwgmTLvEcuv/anOogL41MP8Upp8R59vsqu0iL5HBjS
/VqJYwQCwWQGrZrt4JzpZBsQ4RNk+taPpdRfd2b8um8D8dsroD5d8cXVe8umLzvxQePZ/skEPE8q
V6gN/GyCzIqz1MD0OkOnkVUNOFAXmdXlNVdesCl/RuHCaoUGQPXVxtc2EVUOIlxHk5saII5B0C56
dZRiu8oiqjIWMQ8kfe9wrHnNO6c58UZfgmetE0gcrRqbUbTQj71L395EpcHENzLAI9dmEVrCN1Pl
gq2WLw1R8b8fnOq9wcv3MgOtA9qqvyj7M3vuqAQlZl4MJMgL7tSxy1kRBRRVqLb8bz07O51AsY2C
DhXQ7zmnRR3HaNO654eecoYiAIhTMPjxdXGukaHi4DxOWkVhiT0UR8Ga5aQTN8glU8BL9xPNpvas
MCZr8HL05GhpH5nibP04KuaBAG5TP3I9AI7dgsC6sIQlNzhUjTt9mSOHrBuTOCNNGyVy6pa6MNxa
murcO2GRGnkwKd1LgDmWZvKE+xI+JDO4poOZ5FSSU8FfGRt2fHK9Z06HinSYry/2W7Iw9bkKsX1M
+xCarzHg5d9xE9jGgHgp0jrqXml+e/etYLgkopIvPWizFi0mKyFU+Uo/zNLHRkL7QBncoVAHCHvy
AF6F2eeROI9Kar51rZU9GJFHGY1WbkB+eDWqLqhAGHUdT1RmsCywLQMjbL61G03kEAwCL7shn5n6
CDPs4QYwD3hrrJshEkLsmykQ31LLhu2Ou7OL10TAtKkouPBuduq2t9RxzBkZbh5xPGwbaaa9wZiX
JYEB9G1E9seOC5OcncRV4Cok+JaaKghRX0Qa+0+b1yyteZ/c/jcg8X5P3/UklRZOy4OledkN5HZa
ZNTKvPk8TXwdofjyPksKjZMcrMiQthZzpaaEPVw1GBdGvtNrMM/A+rAw5iEv7FKys7uYLHwIfJ/s
pc8x4aArrfuODZyKr8sXGlSAab8Bd7FTPXbF5ZEO0rsPYmegaZmB1Iakvy1zYZpFqBa5kLU10p9D
6raXGpgmZzwq1Y0glDTN0NxSqNwEN3a4Gcgob93L2fqUh0+50UuRFS/6+RdP6BcA4FwnGQPkmWZD
P/lhUhd1MtkxA62YEcJXG0SsoJ6NdilIRwf7m4s39sgcqkExgSPbP21zPo8+o6BQRjj15ab4kdk1
pDoYFeGhbt4KMYj3y9AMO2LjvOsfBRZ+VZOrjSqydIoJ+rBGh/RfhNo+ZCwHPuTjN6na5THxo6UI
b75ic0wqGejOzYQYWzhH4QFeniMlfczUx1w4RBrWwcKE49uqkfIk8xLHbQwgia2gG9SVse5KEKxJ
PLp2A+DqiMIaTGJMDITrAwOnXVmut90ItKJTnoe6wkGDGdZvleU3C15lI0/I6LlSJaPgabuBL2pg
EGya1JeUhpAyDYZcARlyAXDmS+wgnNe8nS+Ftf93rOidlH9vKtDHjM4RULfeuKDX2CZp1CnB/+a/
ZjxMuWMCqZZ92Gd6FMD1lqPL/BPF12HV6pD4e1oRPQ5xoKZDO+Dg2EctvVfj3I4ni376BVjS+U5H
Tkk0alH/aNEK1YllkJzu5vG2BV2XG9ovOi8kbBzNcLsk3Tocnxnw8psZhw3EDGIcBHlZnU6OcpTD
I29sjPTqJiUPjd+tmgrLeZKTKk2n4UuD0K+WPsb6bn8p8OIKwijGzVLmUTtD2y8/B+assgaX8MDn
ZIsc6yR2e3l+27IbUohCcQvX+/gnXaQNdALkr6a/SGdzG/MW7UgATSNs9MBmz+bqHijFn5rFlfwl
NdmeUyIMljFXQAzgWjsdc7E0T7DiDSFA4eqUnWRS1qq7Ox18oNNaTVGKj/j4Taxko1jzSU789ryt
yIX6wo+NVi1WEK7LuI+X5/rmmkCxRym7yldeWXQjxeU9BNVungRXLRx9TsBTVZtZS9NNOMKKjyWJ
8kUuldm4ekK8MbskjnGoze3SvRQsGXHLdJ8zr9Z58S/F2xeMKsUdqwPmDpToEpbBzJhzXon8V30d
XCd2AeeaYzvj1l7qf0dIXXe/dhGHrOOoLZ1DJ9vkXgH1Rlsq5Q2bEPXGe4YmaqyxLkrG71HEtUEM
e/HiuNpfTIfK/QYvcGhkvCa9MT3m9++6pox6ulpdQG1XR6GeIAgV8RFTvG7SUPvourFhopRN2eB5
mb96subeY14FqaIjRodIBveafhwoyyefIguDlVH4A1HDnIE=
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
