// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_6_1/design_1_blk_mem_gen_6_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_6_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_6_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_6_1
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
  design_1_blk_mem_gen_6_1_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
dfY4T2W8hVV6lGXMidM+X1gN3Rcow7l+k60Rgn4rP36B8X4SVXXiId6J5/OOkYrk61KL96zjCZYm
R6qZnnRsRPOKyZvoMwkvYXC+mqiIPE/dCoKSLDAuYuqu7JEgmm4BOKco8aFisoLHj9iYnFdrLK+c
Z/ADA8OzbC66esRF/i78PFSernxrwK7vVHk+9Aq96nyNLr8emTV4zKxr55ZBpnhPB1mgJDz1lGBs
h/Tyfy1qRbxHVyW6+ol8uxA3dTch5r8HOwUTDkpxbODdeX2Fc8FHa0E3apZmjXGkBPzJVS/C6oxz
5Sfpo0fXXbdVL3XNW/o/pP9EOuUc/NQGM7vGOxiM+trT0l1urPilCF0n8hoe3H4ropUc6+OiKHU8
nLHsvTkn321qlSC4c/xEsKaUKkVDRrOEGRtfsZ1YAvw6knjZUvZprVGMWThywMWyULdrfZOnRIaK
I7H0KZVR43L+JC0fsb3oZi8XXceGoVtfqtEkIaV/GXtXfn2udJ+YzyfCNRtosvWaiEwSqVFUGA2Q
SjJTmhYSDcU5jxEdzxRZ7PFvRzH/m/v6K5uCI4Xvsu1jJgLxCoFKcdLGJs0iAq1AcxMdYjeI2Il4
dAMIV6WRIzb9VpoLk+7fwoswezE+A3S8cJ9ho3JF0jZcaYgUSbAfZSsbcU9T2VSMiww9AvEtdu/D
oKCEnkRMzhsBYtJ2h+9FjJqDzxKoddULqrcYO2sK5kC0ZJ/B3Sab02lDkmK+a1pMpPL2wG7PLTJT
yktsSoJuPgWJ5fEaIGIbbq14URX/VJf8qO7nD3iieAZTer1ukFOznlAq6wzODmwTRbk/YYY2lP6a
KP5AgMFT3dRr9q9fqNbCGsGK/BZslq2M1apQkcx/+bAdXeLjqu/pumqlxkfTTLrCUlDJDJ1sQzEo
uce7iMxeGIRdWlkYuYX3Us5R5KNhgDprLHvwEym5gJgPcTaUf0LlfWgFqIp4TuZRuLmlSwdfghLz
Id/9YieX+Ev0h1wd6D4AP0xtrgDdV4WEQSAoWGHukOzWfXNXrbg5+zT+s83lVXNitzAGm3+OJY24
djAoPbUosvMQSOjJpWQLY/wJLG1h3LEiQd29jaX70A9++FEOJ4YQWgEDlS16Xklw7nunziG1iBYY
izn1V7bIr5dogYskRJd0yZnx3ga09Tbq3QOtkQQhPH1nrTpeIRXYO7DVkSAGY3MiPsbmTe9Kg9HQ
uJ2lM+ZldH9vvgixdYm87o+N+ypD4tlURjQi+C5mW4uB4ceF7+hHoVh83MU8zeeBYmHvI0BAAPIn
uZvLDZMpoL60aO98q3o3EP/9xwEukPp4c3OMO05N9MwFqtn73qfGwbREyoxwoIP0urPQmQjtNpa5
msLE7ZEQo6v7ltUQNGyLR54+SBiKWzluLpGCBw9CO4DZ+GaaqOudG8Z95xOqV55e2HLjAqrHjQK1
1H1jP8NpqH7aWXwTg3m5jDanQy2+sahjVJ11InO8/V5GSpjFLOS/jn7Av8qRjS2rSeT7AM97ARrx
qHuNduLOI/8A50b6J4yTzwULheNSSulc4kuxgufpkHOlVIM+Ry/LVIFRY4IDnIaiXoFmniaA3hti
4z4ynV/kbo5sf8D/XMTQl/on3ScqHjaj5IQYFAJubaTWS8obIG4iIwgw5YeHVoInh7f8DYut2yvP
M7EbwM7L3wyovgJHAJWjXkpvihWlrYx1HAxfd0PHF0gL2QLUNaA7hG8hMDtCxyb6bOX2ItRJ42h/
UOJgNvD6Sbu/4P1T8xPD0Jj/sxtx5BoMdF4f3vFaII0cMXa+bij247owyPuN/cz1eGrMw8r5bY24
hBDj5hEqTgkZSUhJUZjYsqzOiDXtrgeLvqpyU8lfL9GZ3+uvzPegHJ3eAJigou8uNlSTMBZxfgFA
W3lZPhrXKTqjtw9kgLUhLZamA0VQvX9ld1M028gOD0jMQ5tm5X158iHx15WYLlSTcZ8cKpYFWJcf
cN6ittn68wnos1Qnq+oVQC4gPh4G3qzJ2XpruCrKeCrv9Sudc3qs1Ix4CRWiwp1uek711Z+fqm9k
4N1PtWB+sGtNW7NC9OLjbUeV6enff6YdJUxwHeOj45pwxi6a1a8n/nsjDFTUQQxohycGqeggiWqY
fdIQIK0vYEGlYCTnuP4m92TqC0r9Esos9dw4KmWlzf+GEg3KZazms64ZJ5Nr1ZqgL2Evn0/Bg4p/
jPRqaJKmJ3eXdETx8Xj9v7i5wIffzi46aGhaGPWalkyckuJBIxiqVN3WSF2Q7yknEzUT2JPkRpWt
kudkGMiPxpzTE/k3AY929mPI/GIMF6C1KnGe+cz2QBLuLzom/ek+MLEl1jTRj2hU2Nl4ty82Gm5H
9wTPfcxxLW3FuO9sHQwGtx3yGMFCnJooS2+G8ehNqEJCRn7/4Ej/zpNhYC95L31g560EIseQK6+z
Mw9hqVqm+TUeKeUWV9RpymDO/gkb86eVTMaYQU2LeQ9qglosP/YApcZ6I6BkbYZXhyXbd6NYlhUk
f1XOXYkFCUcX0IAEC6Y6xMg8HTBy3Dhrm27+RsMTFocKo7WFVqCSOrNErFfYBxPQhJFz9opdDF6G
6gcf3zgYsuaTcCBNyj68lRkeLf2nxQGRwRICabJc/NTu3vXtNdfuYC/k+2z2U40YoMdxUP1F/c7k
cwJbhSqcM3URlwm5Dcch5yIArF48wyroTxN5gd9FI7duPRtoC6zFohiECJoraUtE89EYQC0k7JyS
f8WUhpalXAA4RlzFLya9mgLAbb3pQgkKBxff+14VAx+hTAKqKxbIXze3Dcmb8SWiBq6hUbG86o2M
DSB2HBHDkZhE8aL5I5YgJqmRKwqAyxO7zoJqt0L8+UGBNgvtwDyQHI/ZWuVLdfPysBBr5+S8aQaZ
gXZR5C0mpxJRN7YUMBH3ZWY50VbfGgowMkC+UF4hX1jed81+pU1Fc1O2cPo3OuQCKFtLD5Ewg2gu
w63jlQXKjAowLqe4d7kVNuBbOl0ZH+mARfPcua2ZI9+tYJ+zBqfQ3t/zDr1C31RCTyw0Y2/Cj09k
EuYuZRm36nMIAlc8HqhQRqeJ6+Jpeal7T2jIqEQ4/wg1bEI6Znz8OpJ1NPHGdLRkK73BLFLtlNz8
e3HYlwxBg6odzL5CXqJUAAgKlZ3UD2Lk9U72A0MvQXyga/B3gNTvD8qdjr1ECnXC+poil1Ix1wBR
A3dtI8FxBTIPCSbHmimGiOEXNufqkHikngVB+8sSCdexPSVKC8BawMZbVszGXfGIEyrs+Lxf2mk4
INGAGwCXfxnLThoxQ1EOdKJgowEU1BarWO2lDUgMGOIw88ZPJTi1y951ofp5Qo9bnlOvVAROvzDF
Vza1618ngh8YU87A0jLYOPiBifHvLb1s4rngaTWbBpFm6P08eiESYqnixAgZbmzBIFHaTeym1K8T
zgxGbYXAAFPkZcIfpfY9tzWZvatnfVkzdWcxRXxmCdozgdbuP5I+2RK6g2aFj83d++vfaJWVuGkM
yS8mSAlE7SiBxKqR0u/er1wtJIQwP2p8AU4OONkviSgmjfg3BLJGovgTxqJNwYZFsK69s9gJhnvy
vtPDh86d7gck7jBoYJGd+1cN7q5clVvaCuVRA2vH4hw4OcslDckFsOVcS/2yuRFNCVVzFj1bPvtk
y1rbe1oKe+Umb57yqpL/DJJUzQUIOvUN3QETjQAbwjAESXXd5akcy8/NF2q6cTl2xai1JSvcHRbA
W7WTllVzOaQG9cpfDWPI/61nv0CpgtxJMyQHun/CmjrPmj7nB+1WYQqrIwqS4VpF/ZPkCpyJ029q
KlnuTjjXlRRbe5WrB8TkS/T+i9tylaT8DHlGi6/IAvFa5TQLmlCrETs21OCPl161vjZc5ESnz1Ca
ZcO0Ip2W44l0uJdwcHlbUT6WIuLvd2lnjLFZ13cAIBc0F3T06QBdDSPcX4zb4KINeK3xCh6D1y2d
sQLemeuhrIAbgj8rE8DVSiKrDCCyjQAvBWsoANhLm2hrtHvFRm9h7+HKdiYbWvWex5Iz6qL4aO5I
KVsr70/n53iAadzz7Sa+SRdvYTtJ0PT69evztOuZ7KfnFiVOVCx2A/XTZFekzdabxXoJ0HNhavLs
7sKdaDNAci3oqEHMFjP/qeEymg6aJitNTN3Zr9c7yLRhsmdZaYMSWqHmPDQtcJKEWLEMQubCz4zN
JexxH24Mf8pl4MTJrtDN/aSUf1pfcZoZWGNVYHQuzUZgTUza2ZLhrF9FN7DkP8CGvcf2zbzY5kr1
Bu3hCC/8jQEc1CvV2JYFU1YbcerWVJhOi8QD7aZT/6Yt47Ll2F64D6kl1SKo6F/dkOBtidMZ6oTN
cn/L46qUXofJ6gxUYk11LEBnsIcAiI6xLLCGwCczGgK6cMCwxfGGKgJuf20KBxLu3TjgTc48PvWI
RMBC1Jy2lG8h5p7bleEJmrD/36FJDo0QzTIOmwM0lqDk0x+t3MqHWsgIfqf288Z88UyTpp7C4viL
xElT3qUbRzXn1iA71eqeltsGV/cRI3hFt/rNR4GZuqRcBi8BtJNIFzEN0tNmuU9LBgV4NgeNm5fI
kP6OqR0OOsxtA87FJeD2pMQOOuVpj0O8r8iBxGpnrmlKJ/dPCu0Xw4wki9YBWICANtWSOAleBre9
PbL7LdfabXNT8mLeikIq9ewwRbyO7PJF25s5nHW2tpImCqZ2wrqCHI3Y+YxBHHCuYIhJbsh/ZS74
rgXS52LWiBUYHETm8afg0mpdRAW++QHpLCR9qtmUZNNDeC9QPoYwqkP2vb1dlpu2txDTyeTg6ZCb
yNIBILB8Wg6BEqycVM6HWTFxocfMLGDPwwPgsIgM681+JrcniyMIHT+Jc0hT9WvzcvZZLt6CtPcj
7VtFnm5sv0YoTWA3U3i5bHUo0G78x6yO+SVSOkTv7+cabPKxoVKnEWbuj92NdHPAJoclfd8h4vZU
SCR48uiutGVy31KKqqfjXP9YblXJhW8LOsPu+G37caB0OkdEayV0pmxs+dP49xlDmGCfA1rFpe5c
pJjwRFZFKkpQZJpgaHYwHvtmHSLpuy1Xv9bVs52/abMUPDvQ1UeBSu4XsVy3FykQGe3rXm84iP44
lZC+xDsBzA/PWddJ/Ac0sw44Y0kqbxxlJ3sH1df4gPCKtRTUMYr6jtETGUp6ntyNRPYzHjyLbnCu
RMyPu4vMOlattzxYaleknYhTG5AyVlZr9O8G96Tpj/cdUjnVNS1bxn+WLpKfGmH5T7HfTBHLUbD5
153nzCxFo4uOyMTSfaiEPrwURhdeoOCdBBCGuzBvyaJFxMaZx4UYFEoCacMoSe+fGctAXa2lN8BO
rXvSN7jTwY5067StNVvtIF8SbWD+5ON9AQCGHCfQd2tAim0u1gg2FGKEWe/5G16B+vAuY1x3lSBW
/4IqO3GD8zfY/ETiMoZQagH7qYA46bVeEXaLC8tYTw4AaEiPs3ySGB2TjMORfnNlo53RPeAVpeaX
dZg5L5Tfj1QGwF3MIEs0zUSFs52pXbYpai4G+iDG0Ew2MPTPN6yQELjDrx3DwCXXCKRRaN24e0FG
Xrsj4brrJ/rQ1waeuBWiEXwCqKgUzbYcmXsjWbDTVeklHQlrV9FPjh34UDwkuSVAz47fsO1yHUfb
Mix5kQgjuF1+AuVtwto8CbebmBoERJw/BoMt41BQm9rzNDpy0/N41eIMu5FW6xLyG5ofoLosUTrv
ImQWa930nhvc87KwpasnGX21RjrCCyUJafnT/XMPR2qwIp9cchTFZS4fvECeKJcNcDplcxaK/PO3
zW89JCuJWXZ0mbuHCOXn/EjTnv7FseuFJsn/FeeqWreMg5/I0jFmt51M9foGElY1MftEWbu0Dw7M
H8Sj6z4/kKgXYPQs18ChA43uWfv3iw7ZOETNv1TEMozEETC5JN1VSeYLmMRT//+7lfQvMLTuH3vv
l79YinrqHWvPA6OA2XKPK5B2S6OKOky6nOfisyFQw8QST7HVs4d6BxoYNI84/LFTVwzx8lnMkrHA
RRG2LpnwbMQ4ljYvYQq4LqDRkhzajy6BApFBgfARZ/2EMym5qyVHT4fY2/Fs5DeQXEFtv4e3wNZO
nQoaZVpOsgfrO+QUCvyTWXQrKdot8nJwVWk/nRtMBKP7ZZsLHXHdE03j8xoAWFqoa4Evqlc0xlY1
YlTHnyXMPaR2aoAx+sFM4huuc+2/6YmhNSIui8JqXqhzZkyXF2Xcdxkh2Nt942zZDrnXEtW3ck1P
AvFoNjXujfvof9HE07YWm71RNSo08TxjukrzQkeBy+iu0QE0Yrkzu7bzOwTVqqMSQSGibwGTYxwD
9imFQLVvriGvCzPzGVSMquwKp+XtVIQA351oljOAuATOxKBMP1tNsv+/d4A4lME4aGF/S0YkAX9h
ftdX3fA5Eg/UF6dd40tw5M/Ld91CJN24f0ai7NLOrzrfZXFgCj25FqM8CA0VRSvfChq0bQPqNtFc
eDtOe7u5MTxOrGAO/scs6VgqHvMFj2W+0vKyDrhr8bVrBv4e2WDl5+YXic+IfUb8u/6hfszXtTS6
rImpos9nN9dUxCvZmHgpRQ5Fzm/syoqJc5A29ATpoDiOb2ZDLkGwVjepP69YSsQE/NqgL/d0F8Kr
l44X1FK6sTa7U1oPfsbeHV+9JLD5SSyVvbJftIOHgG9oLrsPRFsyZxfsVVyyZnSNr1fVRQWpJ9O0
q5xFPDui3ZM15AMCc91VtRR1AxQQ+6MBx3++t6sSuyW00bRsoYrOg6s/bWXDEJjMAm+8KiVI4azc
e9s93yzZt9duSYOEuXMTkvqWVstdGmpuIapH0bU9N45q6A5aRHg2ZlQzMu3pHSl1iI2Q6dPBFAhA
QBHb8n+4gD8keIzSodv9K9bVsbz9/hwcTPHJwenypCGCIPc1vVCj6vFyhaHOnGc92JmNXcfPMIx5
RSsHgJlISSUgjgPU61tyodTMA5H+0PjZlf00Cl2TMDfPPmlIvVh5JpcvCzw9s4weiMI57zoWnn3l
A9XtU0zI+SeeWroVBwHfOJpa/pl3xZnzytBoCxuvKaM6VSmBEjGZlsQcDxIabtnp3ZyEk5Z5y2bx
JOWKTCX42ZGp0rCQxilTMjOO1YNA0Fq2705LSzrVa7xB2fdKZDItdVQrVGv+AFaOLBLOC00xH0z/
n12kKNLlKZWkHBFYk8kv4OdSKVU5PPTet1+FhUwwLQRjKVQJ23SUAZlZDtUOnBv6h1aZl22h0V4F
1TgCjMr6UZzics2PiBXNHryqzQoIpu0fOltLcaJyaQcdOS7ZVgBL8L0rUrfxklQmAdAJmTkBEPZn
H2QWQ6H0ZLuJMH8FgnNagv1BRpeLTXYO+4zD7nav3BrUJcmO0zB4D3lmuLOUmE71emy+Ph52BC75
CGJyeoOSKPS5lpyHS7blFjzM7qJqu2krLBhDQ+dVS9EG8TqJEym30UITduYSeWMSfTikQbH4qypS
rsQ/Gmvx6P3e+zxASeXb+tJxkwJt12OaO/Yc6MstRUdoNNbxUqmAGH0gshTWjPh7KUEU+jEvZCHD
PgMH8dfxZipza3aRdIXgtrsntGaopUgt+uFoljB6kI9PXebN1FX25ZQ5buel1thhYQ2rsoRIbxX9
7FNdZQuOIXpPWINOOv6GSMjS4nogyCj0t7+VIiYxmRrhn88Qr+bzvVzaSQvRkmxeUyUgrGqwcn9w
+2TakMLw+jjB3n3D+3R1gZc1EokpZV6jVLX8fl8VR1fE3iIR1C9wHeyYTV8iMbU3VvB0Cn0fM6G3
eBhNe1/zONFPo5w/dq/zdzKHF+TCdHMza18Ov2PiD3oUJnPutRjtBa3UnY/bjja0CjU//QPTAT84
D+Gcp08MowsY7/0rube2cEf+pjEMA2JTGU5/hhe4yJwNiuua3gkbsimO2Or1A9tVfx5V7i+aQ5+W
1CEOvTIM8lE8mAV6UemodttsXIrjlO3so7PvAym7Uf5EtIlX0UWwxr0J5faEBCgiCmwjopyiViBT
KDW2YAt344EaduRvz8YV3NJPROZl5wofp1YHZusWmQFOAg7IjXf8t4fclyahN78N+iFAn1BmFk0t
3LMyAHqQl+wwVipYmSj3UG6Qb6hb+DVGuOzy7sIC6q9AKq4rAWonaB1ZDjdW9HDgCAJkIgDx1deq
vlwHvjwXXf+52od+W9lOmQoBuh9pVQ+c19WCPlWzvCd794Iop7/l3iA6hCCkXTWe7B5veO7sM/Yk
DyPdE3iUwkxBXV8bqIDO7YPwvo2toO1ap0D2UBuPGXovuxZ2l6pxWtq5sGoyFWYHrkP9DQzhAyVH
ri0AMJ6bVfk+IQBW32OA34OUieL0QbjMlMhXef2TxsKHj3ANTeT+Bg6FHTOKO5+euVW22XZJyqp1
A+w1dVBhOMkEd39FBRN0qEawDpF+AeoXBme0nU8Vq8gQGxvAX11r31XVVHt1M8JBqdff7aL8a86R
7oZAV45pxFrI8fdtMrB3UmvIPa0B17uL8tdXQOD285+GYKdSXOppASSdF7kgBzXfxH27iR3NiBSJ
GdyPEL+2BO01kysdEA7op3pHdOivBvXQSLu+5iMSmxnnsTSEnbSDH1n5Wdsmmk4eK1lnzneu6zge
bJKxsGfu0lUoHzud7j/Fzt4MzEOQc+FNgRHpUcqkrRAHJG5Quf/kO5kPL+jwpKHEAEQLWOcS10Hj
CLK4sGQYuuk5kPPYBNTxnEX1x9twyYxGm5i5pK/zGqD8CoRnt0j/qai27ez4bw8kgqWPQ9NU1DpA
41r6bTpQB/qMfQuMMBtrdV2f+ewd5x1zVlzFsOxsRWvfx/B7vJ4RnC2X9g3FymYthoSbOkXATpqv
cnK68TMIES5X6Td+dR7AvI+8PrB2Qj3bCKZQftxMLH/UCm9a5lWvA60nOvEymnlsOWfpELFdsKb7
0f2PI+NjQR7nPPrnGBpUUdCwJMkDRZR64QEX9W2KfZIaFaK6Y+PIMFFSj3JWevDsfs91LcPJDbNw
9r45ZHEtwjogBWStp1bvDdiT8krxH+iV9VQJi0kWTpR+QpMwBbMJvIvIbFOBApBGQbNcrUcTJpjZ
G1iimf1UoUSYqksny/+TLzGV186bkhcIZjp72v/h9JAn8oPBLogod1lmf2JRFoHBpgpkeZCwZthF
NEmsAuBcMEg/YuesxQmtNC9hXDkPI0NcmWWcwX0ZUdCiFDiynvRMhoTT5XsTtQa6WLorCrtOE6av
TyjX57QDu7O18p3yd1EobUISp8DoF6ktrSP8I9x0JCSBCIFvWlScRC749+AujyIExMPTAHMPowJr
8k9tf7lbfMGVJsWVZOolsut21oag7/YqfUgycqe6kjc07andIdT6A1ZjQULAaOp4S4gjqOTJsk6c
+SjkdOhhWVBcIhVfLw15LAlhTpkJLNd390ZRYaJpny9+z5BmQIsP5ii2XQm3mfCqzkkbUJ89CM7I
LFu2o5YPAQtHFeaQ2RiMq80PpGv1C6RufrUchV/usFXuRfPGUfhRSccLazwfm99tZbpQv3Hg628Z
9mOwE7b81ob2/mbjrDopXISfuhXzbYh0pOr323CSIVHPEMIKencFTbrUs6+bd+MdsxD3eNzyiDRB
2ksKrT9O4E+mBZ8nxafDAS5mm+dXjXU9dB+AIT2Vn1cB8BYgGlXkzoqzmZG5qXZMNRB6kBxfQCbY
Wj046GBO6iOt1nkaQFNwCagrKYidmUTU2RB8qGH61lSK82yvMrxgloDYXQ0sQ48MzXqw2dwU9pL3
n8IlaNoqIrCQ1EHRwpoK4X4Ms7KOP7tIxZZgd775CopstX4LRlTiXMhhn9MbPG653F466gpV5gJd
Ch+Tfvg9zJZBlt4ez47cB2tyIUmRD+LMc1tNFtVa+oj6bP1vGtMss7gcQgMW09nyJZPyu/cDB2AF
LhAwv6J6U1mY7GXufA8f51fwJTPJJimM3C4GNyB4MK3TqsOI8phdtgji7CcVEmdRQ/fDAt7aP4DC
fdF5uEUG0hKZNZGlHdU76j4y0pvBFPbf92bIdyyu5aK5Z4jEjBJo3q+kqzgKuzKLdEE4Mti/qNkq
aFz7CeydMFwV1NYvWIVtRpx+DYZ5XUdBZdhacr03/rJIYk7LJ3aLzm3qnaseCmrvAs0dKawcUHv9
OiULm5/A8ynV4FBjwh/bDl9rCzC6Uf8X+7eGFM5I1H0K2Sw2xoePt5BXRv80/NN74RXfX6hf0RtM
t7QE2hx1Lv5FZdw7/5SoYj65xIbJGomtAEjGtv/N9xPCngogl/MsfMDpHF2Q/muFkaCNllyQefA6
MBDw35eiFw68Zm6GQrjt8NdruJ8y3Beok+9rtVvCMwi5JOE2jiV6RrTBUes1G0CAK9fe0HLTKA4m
BqQCb/kCrYX1Gk10m8b7HfsAdWvCWHYds3+0FLfAyyGXmnj48wxMCh+5V1ItJ8WdZ1XIId7IFryn
wSnmSr/LHoEJcgOfHr86x+VWZAUE4m47tpb7ebyTbYRCrGDDfRhEpLdqPEDadXQFvUt0W44ghVNS
98Nm1Ce0vIT8XgsJ862yIEx3wQCPcIamogzRbukawqdJ8miQaLrDB8dQyamjOqFmCEfu8amlPl4K
idUFZAeZuIPAtpstXErlXPdUmwdr4jMtPQV40J/6putgl0ew9lmKAxrgzMGiPQr0aUTWOc6SGz9z
0zxccrqnPoY6pn/Zry5KrGm8VlcJL7PPsLkhjhdQfZi4qq12+V+vdXLa40siLcxJBMoMI+fxyXDW
KcQmZ52SR3U9T9+ZYiD4NVe6JZ+Ca9cvmZJ35paj9RGv0imQOO6OHlGjIfy6lyH/1B5Zx64tv5g/
A/KrF8S26SARu5P4KntGJJP+wc0s4CivJ/dqlj7Q6Retrc0FA57sGpBj/PCCGo8Se++kymEmwuTN
x9MgVV5k91VPw2GPUWpe9we3ABqiCz7qxoEc1su02ruxR2+NOBRHqC2Q5PAOOSzu4Rro6yunmPzg
QN0PKXrVywbBUmWujvpYVD9mggeuPUjVN+q00PGjY0XLhhMwOJG38znROCmHfTmHZzGTJjo+rbk7
wofQ6lbk5tEfeid0LuJOt0j0Ez54wPEd28z948NYsi6lMHl8rD7dte2Obia+H0BOWECiHWXt1XiR
UbGCENJ3xbfbCs7cFg+8cRZpESESe+r41zAAGdNazcshr2TFsBJk+ZWzq0Xbfhszq4i3ZR2Tfzug
mLAWBcFReKerg7PGt6u4z0oI3j5sdBg6bxvJsLlOFkTI+TEI2rWpc8WjkFR2+3QcPm3A23kQVhdI
ZhZ7X/6Ne66sxQaXarZBTIrtPl9DL0dHXKA06/vpOxBh95uxekJhp6K0Xfwd1xH3DSXTWDnc2L1q
H3SWrqkRILPdu+8fmHhSuQBAmLpNGL/gqIiN9iGyiTvIL/rcyFTjN1VUZNiFhKc+sBe/oEatKBud
KHAF3V+r2W997k5QjfOLRe5mZQWW3SYdN1gGYZ2uMBeeyPRuLU1FNcL1dh1hZegW51gVmWrhNYj9
7VboOB8seDalOPv9ZQKVSHBQUA+X4QczUgjGMfy7VunreA6OHNF3IlpC1fPWefWWmPg6jpPkJFVI
wUOss/8tLAW3Caq3U9NYyjsVL8R8g1TtVXhAef4BYi+Ok1tpM3wJ6gx1DfZJQgpqcYFtra9fTeIF
h7NWR8twL0ilylGBTmpo1DA+EGNaFD7BKgOhUYVvcDlD1h53gOBRCjyF63hI6DEjis21I94gtXOi
k0mF5rynF19zzoWHQdenp4o3TaaSjmnFA4f/HkzFZTd/it0BFop4cNuiX6MSKo3rs6euvjOIAERA
rd8UTkkpUsloNywxfdPeSka8CJyFK8/EW43PqfT/AaUs/nXkthLKC+Y5epOuRUsY7q2b84YnwjWu
BpkfNsB5K9WZqDg2N8lThyu8v5kBEwA0/S9mcBeCbc26oCzw70joFXTsmXyzwYpfwn9gfVGl+Q+v
I3LxNAyLKLxDwx/7CCPcY34Sv6bqhBwXbsCe4YHNQICoDEvM03UKAm/WTmCaV5VtJKj8qaTRvbLo
uanHGWP5mD2KCMVzLLABSy5IGtqgHT3P+rg7uG3/2HYzW576n+XOdiw1HLCBd1AgYywp/KI58kVF
yOCFfE377NaNF9EpMlu/rKDKkpc9xLkfQ63BoIIHd4hrvL85b8QEs/Agyw52SUzZV3TKIhwUFv0F
luWW1KVGNkPJQTpeWmKgokuPXlLe22khP4+tnHV0wtvFw8V+Bk1OLK0H1DoBuMiEyO+PNFvESC7m
o44wc3EGOkLITeLQOLkzNMm9gIhPecc9XrhKYAk03eVvV1hst7ChWBXL1XoY3U1j6MC7uKf61CXy
oTIPk2JxJgrq6xaRykByt6yfGRG+6fIG+MO3A/Cj4YUsyf1n3t9Gr1BhaxcpDLq74TQBDz8Z+hws
S0VpcNMERdkFgwo9c+/zrce1QScxqd74pTZcX2nfUYz3EUu+KSuY28io1MA3QiN+Ty3+P2sfdmrQ
uiZ5EnMnlmiB7Jg0uMeh0L0ua9UCVYipweUZNRHCUp3LLao6LPHU6RhbGKmJ1uB91RwflW2E+GIH
QeMBAkR0cneWKbJEE+Z1c4wLnsflXwjnV9Wpd5aqN/a8hzhDV8UVEo5Y+eFDzwJjHap7IvtiPkOC
oABPqzxvIPHi+FFn2AC44UiTiMB5Cd+hfQsWOUqpe1VhCyrU4iUEsWbhPpbAIscOApFDgGkzzA78
aL/fzy/uivlJpBpbCYRyRrxnJ884y3oh4fSQw0YL5cye00mzWHYsgMzpZCNldp+QTJ81vWtKTizK
OVz+HUsnaeu9eigisnHnw2LS0JFlEQVbqqX3LDEToAUnuCWQM9/Nx5QidAuYr0aFQnhoNS9q+c64
18qRnLvGp51N+satsjh4L65s/jRxD/t2BlCyBM/G5dh4aqe3bkRsMaXvanoosSnbz9a7pqUMSoT9
4leT6f+fqK0kPMzl0r23TlhYQP03HB4xprPmd2ouhDS+Z+rh+s1iVYxNfhWrp8XBWi+Zltzdt5dm
voTnsQDYsz9Cam8nWlBcuTsHWVe1PAWZlhXaqOxSGmNdRlyVBLKExBxf8A35u9zy8N5q82mvpm0C
poOokoiug9XSCmVr8i38cVsYwH2jaJFuN/FTVkMhIXWImgQPiYd4zqa8jvEM4mP/yUqB7Xqbm+dl
01k02s6LH8TUyBOXcBX2XW7xNCCmhpj2Us55cAwmzlhNINcDaEUadBwmd8JoSXj7IxRCMHIyuELx
B5M1OOzkU6HioqJPxHpiSOOJ4Ql/WbEISWEBtLSx8QPGRrB9CDoUinbYBNdLxB9nMj67K8DmYZn7
9Ltoido4pWauJaBnLOUfmYEZ4GKmiZnWp31TQtcgRCLv7jquV0wi0ioqUPyfDH+RzRpJaEDp5fqJ
NqBfWdUoHMUg00W46ISvqJk4UV3Vl8SMVF7ncsioNZ041N7m0siGICqcQAOFM4wC+U7IEC4e4gXZ
wEavlRwy8LJzjBqVCNVIaeP22oDwauGMpC1zJ3aGwd3XTDs7vpSDnSgukgZUAzKNDd3oDa7OM7Jf
rSqO5Am6BIm5BEvxTpHLBu1nvPkdBZtmJ47pa01dj/WO6cjue4WEadmx/JdHzmTLxd7fWlMv6T4e
g+bUe9Eu48Qjf3a61LW314CE9rcn8l9aOa4tfqyTspLa2oATNqaejp+uC1bYYor/onFMGXxzuKGe
SKG+13F0+bfnG/ZLiLd+7a68ZWYxfYIs9q7LToufxNY5CvQM1UJo4FiyTRrIW+G4WgbQG5RuGygr
Ed21vhtEgU9UpS8R9GRdeWz8PU1yKOY8tHS8vkVZbfRIOeeDFBQ+G+i/Ob7W6F5lL4YYE+YZfvaN
cBsAso/0Z71OzVxrn294Jwveu5jpgHINQMBjbtRkH82MHxoxlMkDPaMWOiXm9teOvRMCs44I8vYR
xMfvG58JUkjfwRnLmVZJJxCiids7EeR4Qoc3VMhBQy+I/2wlflCx2ZdRU8or9aoIGhlOlY4hJUtL
mVmmFH3xnVYmkru46vv+rMabpP0aAfdP/9h8aB4HqEYsQEf/YUa3zOeXHORuV+XapqaOOvtwAWAk
F4bZycJ2gAGJt3a94r0RrzdFBJ+bHUiUHUfQfcC0ZsJ8LGwP+BiFZgQ/n9wNKX/Ms3yED4RxnHY9
Rz8qQy1dJ2f8tBntHdQ+zdl8da+LhxzCdZM89+d7XlxMgdrpukyFBJfkzZNpfy1iWLy+066Q5gQR
dvwD8Z1XP7SXQWdBiAOsShfbS5/3PfsU14xoUBCtUSqPr/1/lEkSGAAdK9b+0cQTsF3HHD0C7y+t
Mpfyl85Ih92MXtlPNICuBxAX9g2JT1Hq5pkD04h5InjItryQlQnEK8egRd7EMeIL05TxT3IrYOc6
rVYBF837oEZgi8lKQxJ35JWuQVBXRCL0r1C6YGw3OaG3p92aLBRTltYAx0Ypm0PVlW6KTZxeI4wm
cl5mwsKJ72qvBdQ5QHUJfe/DHOHduMu9PvTbWZCJ+8etfq09LzvrpN7skhIawpynsjRLu4ksQuww
lPkQOKnPK68DAXbLBNtXF8fBRe/ruNB07DfQW6oSvlimYNx+u/+HKcr2NkXi1N8NCq84qRgeKuhV
PZeeLMqrqP13wmjhOkNo93+IRNBO5tw4+9iAL7GkwUiwOgbWXaSASgPB74yzqjv+rBOSQPFeLzNo
npgg2B8yJxSJZ0ckhSEyBtxKHYvwdyQseCwVu5e/tbZ1q68VhdQKBSZPBKEsF9cLGBflzL03uAAY
cmSLT+ObpMvm8nAOUNgL29BF7odrRHEaugoku1MV5ExddTAvUkK/KAw/AvxEYXKWQNfZsKKp2nzn
3EeqfrgLfaRaUw3CvD3IdZEYtozBa0M3b10Cq4n5TI68fZ3r182q9BV81t8fXgILsowyfjD7p2JS
Yw5OgBht4SJAiQMWJ2309j8DYDV13RhQ/DchYdMnujSEwB0BEfv+IxtNP37kkL8vILiLazKuUsao
J3AR3yl3tWK788j4Wnay9UQGDGsID8Cpqa5h+/ull0ob7UWdaa+bpdiabAUsfgIGqGX+7E6gWRXB
VNNGFOWOfg4YdxRCw5RioaMpgK5l1JNkXMM4IGa6hoJbqFdf4O+ptwDKZcHFjAb0sWyftLqN9RAj
f8uFI3pWzmov9ROXvPAwLKOtdKwHkxr6qe7qP4w+jQVSdKP0JQF39CPH5gY2b9hIvqGt7j652INH
gDuJM55wITkmuFoCSqKpcLo9lugBjZpWWZ55XD2WRyc0CFC/S/eK2osQ+FPJghGTRjOQNmWUAHqz
Gstqap6+SYmQlnf/Xvy9Rp7TH8yWCKrtF6/qzdAS6Jlwag9/ThRaub8RvK4qWyKlk5Vu3QqBXvCs
W/93ulNVtDeadxOS3cHF5zElyPBh986PvVSjfHsVGdl5GnArbbKSXKaq4aQ41qYsvTqZSPnNVGY1
EkxZicfRjvW6+xYlhkT33b+uZOjP/4fher4JDKbAh3hzfJpGminGlAiq2sJOMWdZhC6A45vpipnX
TLdkBF3tfz7Twn4geXKTzSkuMsnLgOI1TrAEx3Z8Dou3I9K3KbuisOqYHan//nD9Zh2ybyO6/rkn
XgvrQFKK/w6rWZGHwmVLvRoXfkcOtiZFmxUvjhvVEucYhVNf/RIKZ6jL+C+Z51YBMYLEYdgB4eUp
onWTxI/RjkS5m/BL6PQh7g5peXcScaOGgKfQzfWU4l+YGRpHVaiqRrmCEa9D5IWjHgBmKgG5XU2P
QFp/6XNHK26fFHD53UEb0D4AUrLZ+jh9GQGUztPf1tKnVtVi0Orj0QR4BxzL4INGTBx+P7l/bBBF
c+EUVPuCDhvBUMgJUMNFgzOWqMTNpBjeXROjRABQFfLmLM1sObV0v+DMJEGak85X474aRftNDiRe
RFfMsJvyBepEsXwlrY22qt5S4+xt/HnphbAxp4KEoX9vRIy2Q5f8aFQItdHY69/RB944wqtnq5/7
9OkcgUKbfrTPg6jxdFYFU3p5yq7Lp9KE0PpINhhtbfePgQDQxfJSMsOi8QPj/NA51C4NzjNyRiJI
wq+ypgbxGWDseYK3Nyb4gsrmcah8YuYvjEnv64+U2tQ60le78cztlf0hpK410AokNpTC34RJSfQ7
kWTEFmV+Znfn06OGXDYkTFGJTB2JYVSw4mg21UtgwAzjafBbD4XPAvcyEBCNhioywiHpKeIcyQsn
R9ZfT0FUF2xm1x9+16OCDGtHv7HluMoYvZZFLnvxBulFcM7NvdilQfGJDbuF8JBIhw9ry57evAQV
JXodTG+3w1czVUc0ng6gR/FKYB0dYYL2Ag9GE4cmX1zUAIAAkqwZd+hFCNlXLn+euXrG0T9ZgcJk
HAYslvd8ha0brHMYE2WecsGmyhjzwaJxSjwW+zGR2ss9B/WJvKR5rMlCN/jwOOzLWh5eMctuwBWu
SIMeSI7YGJ2btIY4+dzTjxu0UuM2ul/RiPHDii2bRlHPRnvs2FznFicNj8U5T0uP7nvL9wtwOoQA
4742A1aTQLUoRbvzU6v2ZaI07RDiVidhkevVqtbVb2Dsc7FD4qWGnb/1nAuNW5hjFbfOuLFFlQMO
SGgqAInXDZ4mh6bfR/fLZ1+diMZDWfHdIHOP58rUdUr5t0Jsnp7suSPWA5tQB5JbYCGG19zmel1a
yJtJ0Qx6r6NXQy0l6KQQrPBTPaJB/gwYwvfMuDRb7X7CcvNpK5jyuUQKSw8/jy1F+sAKpkcEysZX
RB1Z6aWm3dpUB3hSe+20zMimzR/AyScKPevrk+8j48BRUXj5IQ1HDlCuO72TR0EZAuf7dZEPoiLw
qbGksgR70wwGCl0lpvG+dSRBQxv+/KOLQyVW90BtKv8UOexaF+AA2dXlirehaeL8f/Tg3QMJs/AZ
DHWj4b2hC5L53XO4z8fTvDDiWPwP/81bjXeCDizy5h9YFcgsQBI4x4UaC3VUcDAr9Yq6CbPw7h+i
B5SnDuslEc5kigAb03KmP9+wYQ/3YAkciuciiKBb93k/b5mS0qu7Ecx1FFHGM/E1X70V6YQQcXJp
4hWmj++C5STrs/Vmg7CSo7YiA7F56mqflqrhsD0e4LNxLJbx8O1unE3UXr676ZEgE5JnSLW4Dz42
q15VQO3yBucjDJTsj3/o/b0uBrpr6vX1pMt1k6ZHVvpU2n9zXoNnxlbHmB5rslgTG4jsYI6W9lW0
WRqn9Ncj2yFcCZuMJFC5RK732vPWWgxTxK9TBHoPChh8SPkpliZC2LYqZKJ174oH9QTcnW51mbEl
V4CqdtGrvPSgB0sGl7PQiv+kH2vbPXgiLFs1aBmd1k7Z5etYEKT2aHl+czaG1wgNYNk2KDo/jtuD
5QNT2CXSWChcnlnbHempWeQQNfym85padM0y03lHiko+hEVVGO8NFQ4WV/mS2Shw/CAPe2nz1OVp
4MO+EFEDu/lpJ9v8aWHm5X++6WriQKPCuyzmg0uMrCKKhma5rmkYXh9gi7eW13PHTJlatmKUVnB+
ub8QJgGBlzBySSSCZmhBqFxT8OLWoSjCbzPEyXrqSzddjQXQMohP7Lo6c+GFV+n3CeQMQRuxyUc2
+4sbQTweSVOKSprKudyK/Am/iVLX76IEDkEninZRWoD8AWNQswaLc5URt2x45IiPyuhn3zeO1QVj
8HxVAt3e6ppWhBllAPVLOMuBgOwnFAt1rVX7g6nW6bSBvvNc/cs8Ezs1QIiccIMhk9Ivq0Iu9zAM
XBqvXcWhcOljIlOHIlNqm/1U+587vQLdySwc5xF69ibR6wetkhAKPiZPvE2RR6ZbKuaGednx1Bdi
dY7jIej9iJLeK1o5GzN5EcX4CCha2YK3+uXp+ajxgfwYumzkO53qMNQgCTKwc1qASoihvt4Og8e7
ouK4MV+xLqEMRbnUeUF4cE+hvyTNa/x3L+EeYMwZG2sOI60y0FcwPzNv+jq73P+NFIQJmAHsUeYq
oPPEtgxgnC19QA2C6Qorwd9LwuP8cvMtIWs7xvJ+z+vItVMRatDi4z2u81jpli1Kwb40rHyhqPaJ
mbVeaO8be8zdhr+/+/SDWyaBheU+UYvg13It23ArX42nDyUnFstUL231Dv40MyOQwPAseFFQhr0c
oBIasBv7ft1kzT+EdcbCkvHXtenWss9u48+ES76Du86ZeMJoPQtX0qxYmfNpTnASPdVMkgNauFiH
QGFSN/ireRJjZn0JZ02kPrmvnCktWbTGWStWMpqVvKbYNn9E6FaBC/l8OBIJEZZaH4seh2PA+tD4
ONYpTIDQSK3WQJZvUjMPc+MeiYPduF8mB0Hd+wKIcf1aobLhonnoVCgFAH9oqCI1w72dy4Vfluem
sDIDOWQ/r0tBsrH3ze09wiBDKMRTPnw4xcHT40P7fnlZL02GwSnPHXcW0kudN1Qcjynisi9w3RBd
czyKerImi/Um8rLPuRfaTYoKhGdZJXQHTV/iiDKuTM8LAlBmEtx7lhq1LSEOXH2tifNzi/f8koZJ
yCiDMswOWNWNpVYpiU9gJDgCP8BBi1LL8H4fa7/ThnOhdEKq7lquPJxa8iYWeW3syQgyje29PUwr
ruCk1n7fwGkvbJudNISpNKLjjNURB7rYt8lKIt9Pt8KSYZIM4td0v7DivC3LmFl7CTRJG1wQ82vY
JhGVx0OeWVATuCm8JQIknFCs34J5EAx4w+buVzel20PbCfp8aNHN+nbVXMyMaGratpmbnn1rC7Be
33XqJxR6H3QKcFrkivYbSDptwR7S6pjKUICFN3ESQ5zm/WP4+FAaBjQ98tmGjUcumry31CiGDco5
Y2lbor7Ao11Iaj5GxFZRo6yQn6sjKtTmdT3usmnI6fMX1qYVkCo29nsLbnQ6JHzcDV2U9V7QXSOd
/0asSfHCZ6qXE4JsY+Ayn0cpdHH9iozVRcsrtb0FcVweQ9HjwBaTwJmHy+uxVu32MK4xFp6hC3ct
BV05IXXM0so0abKpn/GQzgUwSefD5MZ/ZlrvWmTrzmZIsN/7wR9wd3063yCc+rQ1sCr3/gXoV0bz
+Mjneq4+HQ8GaEA9z3IfoS58s2yu4c0UrpLHlXRC1PIdKiFf37r+oK0k3/ldXsXB52APLjHc9jsq
W7z80BI6nuCMqx9wsh6dC9TnqzPMPgGdAjHviZxmDXNQ0sA1d+mHHj+1a0oY8LpES8MCQZ/e3Mod
mkLXfH6MtosQUNyNciGkvCrsEs4uucFg3hoyWIEFzXiIY9WYB82+mfDZi8t5AnJorvWzEGZoEzl1
T10FPzGD9poztMFCHUg8X5Iw7patkw0cuacjJ/YUSZLv+mAUfktw5hXYoLZJFqpg11owPtS0frfs
VdIC6MtFu0X/9CdCsSRUTgaOE0AMGB7YQqUd56fOlrPRa3BT3KLn/tuUrbcube+2aJLWiH5FB5Lk
a+vXihNHFeyd7yaQcLGALXfSzPXt4UHX9iLnVSNi008CSzAD1ZPTa7SeQk7HrChGqATekNNDSMpG
yD/KdNuyHwUDhZuTqpl8Pi8NpzzWxF9qRDdBu/5yoODf33SMnH3ZKYQNRKteLM+v6GoWL4HZgjjt
+zrJPmcNU6ussQ9AaDzm7PGnaxSEapCiwKtDOrt+DfuOYLcPWW5KfsSJ1zw4yxXKSZbh1tdhl783
wLYdyD8evBGD2FQEJlU3fiuQ2/JOZvgCsX86xIFLR2pV9QSLxVCG624MvxwpPT6wavcPFWCqzxQf
8Cpnh4voPXab7o+eiHDVLuPka0hOB28WPUQgXlRYAqg9mNNH8KP/sDLB6C/3e6BKHdus0+29l1hB
Pmh5vh+MOH1pzpIK477uiq1Lo4BSE7DF0kF40KSXU35Vuo81IdGGf/n0RFe5K+Tq40ilD8B157l/
jrnjpe/QCiXbxMNG/jhdolJ1YadrJtSubfPKIy4B0p7kE/IsbE+Hfu+hDuyU/RV8oy73ihG/LFEx
eHNUiKOyQyiFwuA4tU36qHe/Xs6k1uphNumVLhgt2fFUjwagU2RK1RE7nPXamHdwstSxXXTWjM+W
Db5KSPjuWErKxIWOby6F1kRlZKkcx5iFuc6fDAKrG1pVVAn6sANF6yR/SyjNdt9cPYD8KTiOpUH7
/gyqjVJLgnjtJPDwxfJa8Xr2v5I1ULZ9lENWhA1wbCLgy7W96zdtzPNy5RmRQL9SpOdd9fTLV0Yt
QbQkykn6cllOQIEF/nmrUg8SwmfkAQ9pA6v9PdmtpEqMAW0G6YpggGpr6iZ+ds0Dohkk5IgUQIrQ
ll9jdbnGXfVscI0w7SY0tzl6FhcjWVVA+W4tmrPUw7ndzy7+bO7pWS6B6jETzeYfCwUqxwUdrZKO
3zBFCOjWBduReNvDR/qgKmJflSdTliSrqqpl7My5vQ5NxPhkixymQAHuQt8o5iWHoNrbMWCn1DvX
NeS7L1LvvaDdZ4wv0UdylIL1XkRd0gJlG7ehABNNnE7G8karvaOrDcM9XiqD4p48RXbsWK/pyzCJ
EDNZDZ8DIylFj01Gwf4b9ast67x6Vh4B0sC62YcCmU1++cQ6PmJouDQadvaaJBJaWvLTdnANiJFm
lbJ9C2/XOD9Y3zbDUtv6X+SbpElHrlZRu0rfGyBs4BI1bYXUxq7IFxLozJTHeTRxh8WdWsUt1zKi
goh0mDPwhFcz5Pkn4Gb3aPjtgORqJDk/3Hz7jctL1+6CQrsH6raPR6b2mrgSdd5mmHBbb54FNiya
EbUlLk9C1cJj+sm+Lzla47QiZ7S6KjaXJiUkz2KRvCB0ma2Hqx2SOfJOsOrH3kagA51IWUGY8Mh6
4shJQKMXaixhYCwVTD+wFPytiDGpl2WsS66+dlbdPGYMyiaEueULce0ncmHun1z08Qh8H/4yF9nq
biGj8hK+obF0LnUwJ34+35lauCB7pwyzSbYfq+8+Qr/gA3kcseMl/egRd26VsIM+u5Pp5iqy6/Lb
wGLUUXk928xmDMyCJSyfwMwsS8LcznhOG6Slfr+Sz7/Hvb169IPNIgLOzdt8ZRlR/gy+sSS3E9h5
9yyyj2L18CsUS0Bc8ze9EtyRCDI4W6M830BjVZkxNQ1g8QQWml5SjgOxb+AFTTzw7CFUzAbfCcw4
yN1/HeB+hgKpfRsB89lfUfpW7JBzzzJsyRJ33kwS9LWOGoD2Xnaes8kU7DpGdULLzm5zTeBpeyLf
iNe7tm433vPCGBmboVHojR/UrXt31j8+HtRgH2R83m/+89RKIla3amhYmRe2jXJ3N0lsz03JELD5
Kn268jjBeHvGd9PdHeZnraEbgXr1SqenaaBssVp/S4NAnVhwOO/i/ZG5NgirD/9BzrDqYiVeLHcT
q6+qm6Bv0NFbTjaYfegbXcouYkXNRUGJxW7lAwaykO3SFUt53vaY0DJZzlk7DlVlInmB62UzfDj/
UknyRN7fm8Un6041I0+BtwyU+Y6yR2QPdiNwsulj7hkI8+dItt0AiQWVb6IvIGWDoBe+Ehgvhi1W
TSYd+1IxGmZ6q+Qp5yEH5NYEoxCyvIKnp+VzGoSWxdz4HEYSmCPPrdGT2XGIb4YNno7WfxPwvgS5
ZdYDtlX00+tzIxtgBVDb2He42FQH7rp4BCiS8eH3I+OIzxSyyBQIobUmzSKZXN05XG8wAZEIihwM
r98NT2Yzt1pQ+x8FZjLRcy9nexVas8RyNVgs7bTJ4DuaneGQTdkTKlkV6OYLw55Q1kCRi/DDQb+w
mxkrKW448uRrg7bOeWKriLsWLq2Nta7jRZiTLkpvvqg7szC6YeBzTW+VnkR/VVBgOxT5UXL3j528
W5XL90rQ8zceYX3f2NYZtrG21hcYzFch0+HQme4898hNhRnVqRfRv2d/8HWAKftsyc2r+a8tXibp
GyQHwuSFz1NL8m5jL8M3amZBU0bqlXrYOAyWzus6F9curL2GsKKvCb8o+/jfQTQmMJ0dSM0eXfl4
jzyh7HBYe+7CsI0Nw/8uE22jJLhE7Vtmv1NNn/lEqWiWgPx/UR4IMflK6tdHKtqemJ1anaqurJVI
HZi501z7ZsyqZWTvDldTRfTkfOtVfEbRLZvDEvstnQGzyXGFQydoFgOvtYNW4M1oDmYqxeLopeq2
amP3CZMHgN8M3kctkwUbkVNN9ybQQ1yfGFCb806+6nwDMFmHuTzGnNBTsWZ6J3eX7h+2AC2q7TcT
+luze87IvGoe1UfnrKQWb8MXa8saDa9SeD3bapuG7vW+RTfaJV71B7pcadGFcl9Xv1plWKeNm0HN
sRb6gNf+C+WWYGN9qtM7y91OKgTNiqxARplrfz9UWsWCkc+SteaPn9lsYSaTGwlqpugGbqLR0PHo
+KbhK12pEeDYJElYXKKkoiG4y2q/wbrgCvDFn8nHIvepo6NT7clZgOhqvJ50moWZBndvHJE5Jutj
hx6i45OMqrP8pHhtHVjZIrmmaqz9lzGGYA8CxL4D/0aOaQzgNxGCPmlKx447V9tf6cL50P9dfGRm
Z8StJFITrWkGocmIO+cVnu3GHaiMyHdVuahxcuF6A8lzUW7Lo3Vj3OmG04+m9CEB5ByH1fdsi7gm
9tGdqTzv8z41Vw/2XJIPhQeRomeRExvRRyOWj/QqLuYesftdjFW4MjpyA9LYZAt0hmBPhuYEyI2t
s1yMb/UdF/fASj+IWXQirbLt1FekjEZa6VeII4ImNtnEVTrcIOFxoZMCpovWv8q02ucaQDKQ/dp3
i6SxlMZL0CLwqVRIk5u+363SN3XHw8K7jbgHy3EfVr3modfAJ36QbPhlfspM/JW8XVKqBibuOmaP
NuXMNx4ihMIO6rTK4C8UeegbjYy037sXy8XmA8nXVLFMHGhi+jrUqsOp3z/Be9AF+HOD7ff8TzzT
qlqbalIrK1Lgcn5YplCzHm80eHdvu3NmLS5S5i0V0fphTR4/xAHRDu837n48CpPakEPDOtyuS4rj
7YHJluuZlmHvHdFkHqpGlUndz+66XBlhAwiMY1KsHJ3SpTIxUS2nvfN5upE+lK9Oi5mx0m/kqSp8
cqelwpTy/ZajM4nBfog7fR0YU5Bg9WCjdjQJT9ZguY5pi4qfw1K/1kWDaX/oBPU2i35yo+tpfGgF
/lGULxyTQj6Ob66bJPSMaKVkkw2ewbs6HRLu/N9/cEecaMsuofj0lZK21gzrF/Qv44li+kdCsd6Z
GaCFUdYcYL9vo8lC0vhoc/7QWuo473EuEolrxJicjjEhtZplQ3vnsfkzW+l3mtyWu7/UHjVUI6M/
cBPGv7K+IPwm74FhCUWW230byEBeDUY3P8hY4iH7ruvueHXDf0dWlBXflF9wHy+iKQg1/3MWl5Wy
5K/VXHcrbP4zBIhcfQCxTdaNJw2lsoW05WMEvYrrlmrosHGwWisnlvMpiQgJxx60ZH+JHJh2SIjX
0fgDDZdc4HbAYmLzpTJyVzdFYLK9JXiGE9/62SrhggClKQ+fmPJ87ZQ5+IfTjfzkNjHIibBI+gJW
EPBBTdtZDo236uoNkey9q0xXYs6L8ubYR0sm7Gtx3HgtePOaTL8HyqgKb5sWNmi0jE8xW8VVJiRE
anFvRYd+hCdCSjVK9mx51/X+lwxkogqKGe8/NQ2lWiVti/8/wlvBmiD1sZ1dsCfLJPqHUuEWU30t
9aysb4yajI1QSTWvd/lr69fR03dWvcXC6oKGa/QakTSQVbr1kQOntHzJdUe/kIudcqq4EWM0Xm77
F5hESBglZqP3z7mLPF3Xzrk=
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
