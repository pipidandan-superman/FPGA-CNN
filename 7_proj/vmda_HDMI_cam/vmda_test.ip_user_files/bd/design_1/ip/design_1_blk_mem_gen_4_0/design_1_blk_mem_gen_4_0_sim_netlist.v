// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May  2 15:34:22 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_4_0/design_1_blk_mem_gen_4_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_4_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_4_0
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
  design_1_blk_mem_gen_4_0_blk_mem_gen_v8_4_4 U0
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
dv7pit9+XPGG88QSKtx4KMKLQRgUvP+uNN6qog6oQjcPnjb7GbhVNQYh8TiqzryeyvkUSTONla4s
I7fxk0saPb5gidwUmHd4OI/e5GQPYJ1ugHNt/j30Eqyq0/F8m+kH3Z5kgwQDYOs4V+44wbRofa/M
B4xFJwbOVLYo0+FJnvrpGjsJzOy8W8Ocm+ECa3nJmvdKPGyuKg9JDgnae+4NWY7PTBhXoW1u+32O
J3c4zE45KGYmUlrVg6ArTwu1CHhhHf7ecJlHr87YM13o/BDIUsh7xaEV7ELfVOvaZM5Y1bkoPpnk
tapbOUJIukQaE55ssYvL2UvhOSI1/0J9vwky+UoxOMWqQNs7pZDbwDs88HbzjUZc6aysLnp9jeZp
aWFvLtTEB/YLZbHUWUFBZF2GpX3LDULFQ/cWYSn55YEaHkq1nJK8F8OwsnJP12g71oSaeZ/z9Cae
FzCRa5LL/3SxnaekMLP3b4Jq9P+WYQ9UKxX8s5Y2xIYvqx30/XbRbtL8Nn2sxxB11orTZ7vf2+NW
im4elivWCqjx4hwJ7USddNrhyOnhJt40+PBGMsHjybFBUn/EjFYsSf8e3ic8y6Qedt/Qho1EMpQt
ALXPVSVKPNIb2SqDgLuTenfdhKrFZtGgc4mklMUfb56HGqulTm1l5ME1txTFKkZsJKgUt//JT0aJ
R5lAs7d3CEJIWp9LwhHPnndmpGQS6GJZ0zy4foXwxesFNNf5UmQJh2Yy9ViRuiQzUWWgzOR1WK60
W6L8nKZjWyoPJyTuIRSCjLIhqHtL+SxtEE8R9cQcva07bJkwvb2wI4qAasN57JmJ3zSkZpa1deRm
0ewXzMTlKS2SkJMomXmtD1VyJ6fPILk/y4k3RfrIVXCs8aKretS1U1ctKp0BB07d03mJWCCviRtX
01FIAkRQM0wEmdDmbvXpVbBiY7rSaUGL2+HcsGPlzly9t2vN0ZUT/2YhDen7SPQfd8x1QPzlH8My
CRQkaWPUCEG1oP0UwQ1C2HGdExqqdrKtSeUnJ+68HKO/LwEU+fdq3KMepIey44en3twvS45BbsXB
O0VRuLrDP9we/xExdSpBdcKlIoRsIxfMwVHXjNCRqueml26TCRQzX7fpEHWbD1jZnDx7SPyHLSe0
mnupjwC2dc8FW/0Vb7pqGhpTM2E8L3xT/gKTol9sJVGnNVCkfcAKUNTUFzL9PUXjqPGrEiqhjY0v
qh5pPKIO+/Hyj5b7ex5BwFuIm9ykvFvjo5ofnBae4yCXYnw1GEeQjvLvoEC/pz+4Uot+6az8HGni
BJUzgGVoa8w8TNffcpVRYA3MA/j1pnUpKWuqNW/pt6kNXNM+eZojUPdFojLgraNjrCIp2cVj07k5
UtHQBeHjxY4HlQ8EdUTjPlKId2fNCR7JdStXLi43m0LE9QjJ6+vGCWDrPFrvnxbkbCMJI+mADO6n
djuL8JDh127wH0nTZDrdGmrQBf2kjkH+6tzqJD8StvR5AhOZNMHTsndVMcsGBio5+Qakj2PMS4MW
0iAVipHQ/umvlaOnzXhjRKoDFsRwsgPg59gNDHLWW4MWQH/+O+4nJqLNwe19cejd3az4oRPq/3P6
+Siv9bl0KEDr2+///ITWgdYrjH3Z0PzfTn5gvl4GYuMiWKUlXUrEZJtS0OxyfcsV51RtVEOz3ANQ
KIxGoSGSVkkR31FWni9HngND9rVtRcpiHRJUXtulMhAUjof7Bskt0st1sDvMFDgi5rYoY4sFVNCB
Om3uCQ8YpzUlgARVEHh2/oMr6n0dQMmyn3HNdGwFIACrfeSbME+23FAaNQrvtPBSixYOVD0kjUXi
CV4FbjLyRouSthesV9E7SdaxGEJrtAE1RoWi2NaWRBLX+/BYj6gssP2EBiwY4kjwcMa6Izongv/8
HlKbWUF1KQiwSmKTohcfRVEhxdp1d+z63VuDcaTCSVhQSzKShH8Z8F133InRlgtGtOvkf0VPYQzp
JRITB2Ra0QFmIYTpCtcXa3yJAQzeMlgFD4GBfWAuhaikmd+f3ONOpFVlT4CoXDXCUHbnNRLyAmgY
sA9/hneL+Js98sY3DpJAmCsdraCi3RTXHR/fVczyJZnDkn8vyAbnPGKXKRFqAkWS762wx/MZq7Hq
Sr1e7vcKxaef+/k+fwqFfNW2xcbkU0bGI1ZUWo2DrYEKW3zdwSgAWPPoOgJZ3XoUmbMEc/yiFuzY
FltRAwpCHdvM5Vs/HUrOHOZI3o6pBP0B2CHuS42a74oAMTpYeGZ7ZSi9PfaRt6k7AZ2W/CZoNTbb
f8aAL9uGnX4+x+Qufo0xQ9QQ1gmxfyRu8AM8L267juTfnK5CpYduaXdBJ9/8vVYvWKHK7WnKMgPc
0+lCItiCHB3rM73HshWEfB3y/Kt2mkb86A+y7X9fUdQUouRDbht7AvMUWTI6Socm0brKlaZoM+FZ
/wR0+R9MaGOor34oKLwTlfW9OHqVIQv1o2n3m9xemXx9iQCSJ3NaeTR5tK3WuFAxcAoSF0Bw81ef
SbF9bGMjTVnz0PRx6FESGGt7NzVB2o5Kbvc2qUpyGHQpP16WQu+4o3wMZi8vbj8QESp63RzfG2FR
aVqeyiEtQjmH5E635W+CCqF48p/vScId5CIRojzyVtIvJdiOB38y827vISbxcewtdZkuPYXMFLY4
zUfHNPzfwUb6oAF3ciPGmYzPdCIaxSCY2kIY8rePl1lDDDqwJDoa6fVFj+hd0nn731o8tR05dRF3
0x3XzFfJjQijao4Wi4dv6WIr/2IrOI60DtnKR9xffzDoBrDivxs2Puv91egjg4P/Mu6/iJRaw3fc
ZUjoCvS9gwpg1+TGD6PRemrq3b0dXd0UZsnsqhOV27Zq0Mtxh/crbtMiZyx62dsu4qJu6AJxpNEf
me7CVdNtIqQdOgMJ0jQtXFFxDdqLMw1dayMHFiE7rWVogbOv3hnzBocwJdMcndfcqGU884yej9XP
NY8jJ6WnqeHG70Nv1vgyq0dnVGs7aCojpEbF0idGRh5zHEJLF2XHE3MoqDE0zDhCwqIQRlmLttAG
y1EdziD8Vnuc96yy0VadwlCJtOIRV9uEOwpgjEmxn5A40xz25GpUdnbSY4vMANVu4gGa+w5feboo
7Tj2KV6X6gjUMQQ1zdykqgCqoRAJPVEROcqLowfiyF5HlaU+o7ChGSt7bCNmFPywCF4cbKj0nt2L
aJcy3fBS4faDXUTYahTCdbWcD3xNL2dbZjnMyZOkqp7ncU0FxnLekIa9pYHthosojNdp4rVwdN1y
nHGmBBVxrBRukkJ/fgwQIaaqaWKiWkk7ac1RrDFpZd580RR/U0IvJQBTOgAnygkqNBBrsEyUhD2v
X8PRNQ3uVQdL39rumc5W8SdUxsLTjz4UbpYQoCGdpnrC5tahj5ER9JynWo1+O1qF77y2IpWuXW+a
ThGC8W1hIfrj3huiLYFiB30xDbBT6BfLx4IduG8nAj/1atO1jISxPaIvlIbs0frZb8AomHEE2zO0
oGD14aGXHQY+G1Xy+X68Z0qKc4TzEkEk+CNcPdZs2vhn9e3xlWbraFGYQtdXSpRCgRd8vSBM1+5H
ifaXHtfFXkdFC6nFFq1NniTnEeBvd5hGyCUD63q0ToKeYEIvvjfCWe5fAMkzROxXQ7uF1nc5q8GO
+p1nhCjKx5UYKnTKKBkkf2OlBfAXNl9ocmdus3A4vNqs5P4e4OUoXGIezH/OS8X7YP2ItPN/tUSJ
9p3Mt/QBSaS9P1zbWNl2CMwVeLV9p+SlhqGyMxG6zbagz0tkup1gvXU4jXSivJA3+chzKAuqf1HI
NE4SK7iVo+ZZs5a28K1WVumDn+OpNWhVjMB46W3EHtA7Cq6NoAH8mAgUESdVku5FWYM2iy+yqnXw
DSIlia4QtfV3tgjnqxwVFTqtdH/QsuCEmHeu4lYGf1w0HCPjqPVdPaFg7kYL5cbMBwQMo2BFSAhW
7M3KdMf3hZ4pIRi0eIWnpDWwCjHPI4+rntvmWqflUDCdrV7OD6a38SM2PD2RGDcIDNkc4QUZ38lv
1YlpzHtjzmGD+2vQCSNNkUjt2Vb0zTSqpj1M4eP/B5HEefbfonN0e/VMnesqKOCp2+XHgPmpvjbM
NEguXP9QTOd+7k/f69TUZ+XAGJq0uLaSTxGHqfBZMw78oNwrgbexfQBCnCnELBGL+gWCkKWTsFAf
uyX5f/a4y9GC4Xf0FP0E+3vdXkS1O1t4TzC2E4otMTU0ambjm3OGAmrX2isw8s38Lv4WCKAJp8zq
VlMFOU3XZ+pdNj0Toqm2+obo/RMtCh+Q32vJjkTpDgLGtKMXlUsqIqdVfyOQ4iUZ8031edKyy5A8
UhPcRBzDiS8dX87qqDR6vqSQmsR/v8/NVhedlCk6TdnAjiSlenmHV9aR8M24Nmgd8mMk9/KZTcbl
yLvv6pinZnxnZZNzmSFAmU65osg3KBXdPjA7c6hxEuDyV/lh0SPhx4oOdjDeXfYjT7vE5YwurY9h
YENAuvLzGFJpRnYyzZUVjvbz85rhI/ksGVODXIT1Cuq+vB2z2SDLwmjHGOcrYJb/LWbjKWN3bK/m
DvnZKAtitj1N699/J9kS5Iemk+VUegpDzKX/iJCFjO4hxjlQ6BbQQndZYd3LHbFl+mNvYjWgqWdY
wTJLypT2CmxBWw0PYm1cS04We0Vpt0eE15Jsl0HEYL/kaDMId8tSI+sr2FPbEb4NfPX96wWXwW/S
FoWhNSC4YxCpUgNQUUwmmxp2Ir1CBU6qzKV9B1lILCBvtbzrTsffcWb2MXHGx7omlq13IOUEZzPF
1F8HPGR8elHAMRvJnge1s5wbUQ2gQOy6b7AvkkAmHJFNEiEM7J720pEp+F75RGcJYQy9Rr3jMyVy
pQ8gIyAzvYEw2QLwWEDJztGPpeRp9PSsplTYFqNStzAHj11N42zZ3RO+gCqYquxm/QYz1Wws3uge
M7vRR3/ZQE70fg0X/9TzidLNR4WYYwy8iAzjZ2DfogiVCpwE3JvLBVpmnLOwD4jKJThQUo/M1spT
IpSUQ+QEZtZY9tjgFRW20JJTdzdVPkWr4j9+JyzNGBL7pJ1ESc+XHduCVNkpURxOY+It+DH0yxj1
+wQB7IDwqd5YL4Dewf8B+cyi3GOU81H81homOKK7Q0qVrsqrSZXj0TY3bYgunMtd3v0TxZrfegxe
HPjJZq/sYyIn8MXQehqy4+ROBo4gA8WcN9qI9YmEXhrPhFvTu6FLN3NRZSAh5PIITFO0tc2/LUTW
jpaNTnhsF/mK6zCupkdYZlc5VsXXp0XbZWUOw/dsJm9qmO0imNepXBwOKHE/RvE06OWpnlo8nSub
DA+LvEQhxwoAvuxbcD5K59IUn5sIU5ZuOdAmaHmH9mj9yFddf9n5VMyz0Fm2zuvLrnTyWfEVcVZ5
PHs9Lj626GlUoS1Hk9BreLxKwSz1Gxhhh0B3O1XM1gpat5Cz91jLzAcWbnQWrKDgKWcUWA+kO1Ep
VknJ3WEuGLbhK1xm73emZ/EGOyLFRIsJTl9IySyasR7RZVjDAsVQ7OKJP9vKVedkUqhtfEufWjkF
Tv2viZnOBCx8ShqGV6FUZk5qn/pi6YlHHM24VsAql5ac6LVJbcuNKT658p5YkmVwb0gTDHlkuwnu
Q8EqMX81IP7Fc3PPuqHXnCJ0+YNfU2NYCXRXJs10+h0l+fL52Bl6yh5MhrZXSaY/lPzAbX+Y7xlR
KFBO3S0rAJMkYqbeQFa8pw7rqKCf2z9YO51RtrUS7gOKcyhhVQ7fIEapoFyrNnGoXTvOP8UggTWb
SzG0tV9zLbq75/t3xbHOEd/eQAm9pmlrPWVDrUxI9+FvaXJuzxPSp2OInW91FbGWGkJhzn1NOzqh
DAE8P5xo0j3SWhAo0T2Bv282ZG6olMQe3j0xx+UYpbZlbEkg+3r8nE4JQt71Ry8QGj9iQjxh+L3g
ZVeLsy7yAp1va4Lh4uRZ5tZSAf/ASf2F9bpsvv4WCzJSDNP5tQ9yVuO3Tr7hUDZ8PeOog06O8T99
ph2T+C4vIJn5VCuTKK6a3NSFuEr7Q89c4/NDZn8yVvg9IRuRF2bw9jAS8ovZmKpFBM8YFE3+Dv08
BuZU8qWQrMH9pjuvbCucZN1iusT07nuPozga3+kSbzVuuvVWWW4IYI3IPZsxP9c8xWOKAb4u2e1k
5Tdgk92sfaqGrwwGoyNZM39JwN3yGJFOMwA1bb5L9jYSLzCQ+TK+J8ypPbc5MHQNkkkyAWyy1Vke
NWiyG3RahZq8QClXCy2CDyY9yRQWd/7vyRD5Xux0KTTbC0ov4wJb+TbIgx8ZrIDD5aOdTnIjse4O
3ESinn7jlmr6jdPGP0Km+6SNnvvnwVIsMlU+thlkSvtp7V6G3I7PGXrT3lwIkVEHNR/wdyjE38lf
rWOjIgqaasB2feD5hubj9+Q9ixyQulgb9NDhCOr/R+5/aPL8+tvEIqgvjuNBDeie1hjcDBet0a9/
Uz6jXpcc1lCY9QxLLZPaIj+y2H1JjSBDygJqFt/9e8NxdWIc+SIjw1pu9+9apCPiOFTPICLBNJER
dT96FwCfxpZW55neLpfaHXD3z83YKAtfOthPUbjdN+y/qFRwznP+uziFmB4wGUMYmjVa7vlmF+it
a9hKTwNvBUSHpVBWgT3LK3gY3A7AWeadA/DBOoXxdzNsOACNEgf2n6qMvxeMBX+yu8rk/JXsGIcw
g9K6t1vdICLfGY7uVX9jqayPsRKVOnCqzt8SmZr/AyZ/Rz9CeXiumNeVxSPKqwrtl7KbbiRAR429
P+uVZV68Dlkmd9BftQp9o2vQnJK6J28s2bWRu5RGoaQ97+ZzfPr7Ck17+dIFGHf1aWXYP8bKmK8h
YpA0gNQ6kGNam7GRzOqPSq4M4LAHtXOFGfpL7PDBmXX6zCt2GKCPbpi4u28s7Z0h1F9UmpF1PHoI
PSTuaSl77v4lMUl/yOH24GmhjKxkscmac4v1DtVtCmXb0jF2yL5DZF1miHZ3+vF+JBd+9dGerXgL
w1B5U7EY8pHlOjsmqJ7AC9rShRdjFepfOJhGap9tbe6HdawY/kJkpz/JWEbp4fQdIY98AB0Mmoko
b3FjTmfLMlJmp2JFKXguymG5aivAOGJRDX8/H2fvqC5C2H/bNtBjMExlGnSOsDks8bEUJNtdraDz
0AqCtUkawbT0DRXJsPUAPoxOEL6i8OQ4YBiIg1SahUe68AEnGhjArNAOKEgvMXdyADwjCzv7EL0W
R+ucfFnWzsKlmurdnwBiu7pb4v8JJf9IujeFSlEMm4WU1QWZtWdl2r3I8OGi5yrb3vgWi3FEG7VK
JZdoD3rexe4iloaWiIQ95j480LDl7t0B6tatZBbwfZMZggVE77nJGzKtiBQzJcgHtRLoqoH961YV
heDg2FWG5U+YeAUGv8ciVEGvnLYX3RASVCaBLl5/YB0EvStiUsbswxd4coCRx9jMtXGLfgp+PFPH
J9fOvfsm2ErNv4PlfwPUsma2E/CprWb+rjNmiXliUbsPJd/L458C8QIntRQTfgnA6RHLwNjPZd9M
FPDKXc9AZGlsXEkunXdA2MzmIT38072OwEXMc0e+7HQ38P/2tWOSRL5L958IXU5zp+VSdJMdoe3s
5KN+nuaw92zuQFSZy8fwZ/I9M6y9Kbifgm/LdoSvb9mCfmLakv+RXF85hBD2155tG5BD2drTkTYD
BMSmc4RP2+wDUa5aEnnLVCtV6adUcoudT76A7DE15qtW0HIIBTD7fJz2hh/Cy7pHzXdjNicfZSya
XDvWyNzCAipJpQKjalBPyAUaL7Os7tk+lK8lZiJaI55BxG5VNwHgseyC+cugpG5lbv3cpt2ZP4cr
hzVuWxpsUB3YU2fF9Wy6CV55Vv5nzo+YhrDzZQPZ7lT55fzKMPsj75ZRRQCbYEi9/VpKRGSw4gs3
bjZi35VDfk5EJDPxyxafrBkUnootXkFHLY8Y12KvHciFWTbzYkUUjIe+E55Z0XyiQrwMnyhUrO31
qBRo0PcZlpq10p+mZndV3YRhPQXp6GlZuorNy1NgV8dbJKtc868N51m+qZwRoCKFPI1nJACNCndw
yglOD9wvGSq0uIgkPCGDByPXGLQdQWiFU1fYk6peAdlFiJpDAoYsEmaWoMMh44jB9up65KBwpwhQ
wDNhmK8VPVxHALOkupxNroNCijimcukfFWpv2jslNS6f5sKJ82xqOQdVxIe+s2Yw74mJyzsrXiDN
nxYV7VBWuqpd8A7+/VYxfy4ozuTSnbbq+ABQLkctx0TFMJcFzqmrR5sVAlODp0WYVL8KP3apNvm8
wQ/46Bs1xmhmHyBoqHQwzZVT+yvGDnWRotV16QdTBoDesowTYbsYbNbx6aStXZXhay84tyDUgGxi
LXm54kZhtFupidb0UkrhZcSj3Wjai4TKK4q/hp6JeoAHr6AHnaMxL4q7FuYliH9+bQzuoIWd+MvT
L8UgoYnm73v1vcGmo/lbDoVqrEOQbKiISezRqAA5DApVqCTUYPWFySUQXHilBbloWwqd/8+vmwA7
1oUFDMZWwJgLD/CDZjWBLRuph9GmLIH/g9BUeGrCEAj6wDF4i6+c1RNmS63ieAp+7NFy2tcvQFZ3
y9R95pGMEXQy4KI2ZbBV0FKk4NlRehXlTYKSKfAyPMWpb+jo9nsdk7387SKfWiio4baVaklCUZwk
tTjlfoX48GU3yU6GlYSFMnYRc3kUmm2eDrlP11PZI0ep/2VsoTWwxpb1LNLN2pqV12uZ2MQR/ol3
FazI+wtjVHwNzc0VHIFh6oMsyfjsZwCVDBk3Db15ZGwv92LsmPnJ012qoZVr3Bz6KG6jT2DVEPXp
2QWAKKTOmiSttKlyrCOaopyNu2Ui0qI/wsWzP0ZCIiR2HEKG7nIgM0xVY75tVTYWCBKd+2hJQDMi
Mbd50CngveqArVlBgFTALTxAUt+r+jRmLhs8JXOVFbGGlixKEuyHP1/A9AElm4cIfwl/CAGhMda+
o7lOWHJHdZd/XBLv6c8ixgw5jtZjSCHbmlf3r24huAhLVF8abJCpV0P1P2CNY4bI3cACoJw7U9J3
4lOmkhpCFHHt5Dh0Q+uq9CxGwgOKTnmX/SeOFgbkM35dRLwny2nDKT4DSY5JJsISgouE9LqknTLx
0p1MCJM2jXzhvHSR785CK/ZpSM2umOD5FvV6kZZY/+sfjsh6KeC+hKbP7Ing/XuJFTcTm5sxF2Xb
URWIg8+aJwIf0X8nPHE6RxttLspucGNB7PlLEnY+A9DCPGvfeRLs4i5r+WHapCkATZsbAXL9vTvL
83qWjftftXQ4UTrBmh7fqZXdynvB71+pCsOW8WvxAn//Dc/JbsBfmoA222Z5/cQF3s5q9M0o7Pvz
UDb71YHlr0ry4Fnx06AgdtbPE/HpkhQwVBgNsVRqp3ken8rOd64DweYZz9G4u8SEpzsO0GgHGwwK
RWTRiicBQx0LeqPRXad0r8Xi5qFDdW28aY+LB+mHKJHvBjCR0t/JK6hytVQnBQUMfmI/Q+vSwYsG
MwgKXiftjgyqMDNTIkUaFgOfVSf+pA96x8FsnZkRjF+e1xIkBw7tGfUjMomshb12hPXOpMPbUI+O
xc7p3ftRZhbmRp5+qlRSZDCyd2bx8Vrj8sV/LmnAPa17n7t0cnV0RizgRvyGrJFXPjJD2b8D7aPl
jefEGen2CmrAKscnqdoMDKssKwUE50LbRgLGAWLzkdsJfj0kdXSi2SGp9PFH2AzDVLQ59xOe/PT+
YjagWC4nij9jghwUxHeCWEcSsBpg1x2ktP4v0bUMwe84qVwF0KqCkmMTUdkT1Yo3/IdlBMkSt6fz
lkxNzRIEXelSVRxFQ+QGivU71sSPl+ghn0bIfIn/vhEP+ieAPrsku4u9UHOd4xU+Cw/3hqzIWO66
3PzNS8LWaxchHZmfqGpJtapZXWZ+hNwCLe78uXpoh9QoK/yDDj2MPmq3LyhUdZUfsrd8TIuPjODJ
3V9SC/ipKqyB8cbIyYgB01BNGIySFM7bGGWvWBh3VIfhagdDUZnbcyXZJQpBjyHoaZtNFIL8ucyW
setrWwxpwUz74EAeuCfWaIoR25CqFb9fH/5wYkH43vx/R4uV9zbQ80sDmOD3Nl3XkJcn88QvwiU/
5fyTwkTAhuhIv57wzv7on4CH7xCapvtsKFeLRre8Ems7VWyu0diuQDfmhD8GHA/cP7/j4g0dtvBU
9duJXZ/jz1gTobDDYn46AvkyH9fUlh0cHMNboed17kx9mGzSgAKNu80vasf+R0HLGkC6X/+56zAl
P6Ywp/BJEh/b3NjZaGowZq0gn6L2fQFcydgdaNUOtSW6bx8/hHxChd7JRveMPzMsa6WEd6Q2P8Ve
kv+RMewDCncPsBsobHXnbe7l1UK6GKc38780hYfmRkRIMoSgmURBzAcjONwyHaQ37kiyOUR9CITo
4nvNp67q7YezT8Cbbh3wNlGDWufA4oI+fuzUVHpzRdhtdocFpDtIZTwkPfpE3BjrK7zUzsErrY77
2pPPe2Z5PWDYw7dX30CAyXhzIlO03UkoHV8P6iHJy6bzGs21MMTPkJXjZBUYjIykiQO5Il4jjLmE
RfiHAjD0+uTKcVwonYXKDCDp7W1Fi9HwtRGj2qAOq8oJLwINsvaq5gX5t6ek0J12M1E3C14HzWop
R+SvY5zySMCd+WWJoBIf8Kc3bUPsr0dyKRZVceTVFgmYstXuFl7BzbwEX6oeplP/L8MWUGQkKmoU
q7Uj4RXVkQhULpM45CRNCBy9WJRUWTY3LoRFrYAdFeAkfL07mYVxD2qv6AN7MHvh/y0VMP5GKyZ2
z93OyXFJoJWsVe51g5OhWFxDMS/ABIPbcM/herVTzNOI/pmMzmHEA2S2h5lsgYvN7LGuUdkBfTY1
VnD6Dc0Y/MqllOJPsYkrAniV1rHdDOzNsJgB8Spgv/Xb4/Mu+mW0S5NC7j1pPyAXcSN0/IXKaiUc
puAAJnEXWTS5m/0BQ2T6HXslgEl5OFrbH2eiM3R35iwNaZ7cNDQ5/4Md1+Kiqsxh14tdOJJBh3g4
sn7DgoSe5YTpEGqMAXL+96oRwfC/ao2wwtkfoxxxQ/ly+vu4NDlqeHYzMGkkg84vLjQ4eHhu68d/
b+PPYfP+gaCIvDcxvaTABlKRG3l76A8Efg3SVom7aXrusW8w6pl+hhWo5nVweaYumZzOeFUPTxQP
0MPnHxCLoKTCOgXrE07ra8WdocXjrkg5QP/xD6/xsdDLu5xBLDK5txzHAscDL291F+bEjLbEVX6m
xgRw/0MDkcwtluIXn1aQuFZb8/Z2NlYoZeiFY3f/WtKZxy1MbAYLl+iRMGgjB9Jv7aalPXtulbLb
TcW18ol9sA0kdGkBP2HavAxypIWQKfmyw7BaJqPMN3/XE+/dohza0FFGeXc3kGK6cb0sSV00YcIL
4PWQ6QW6WsA//CaxhD1iFfHmF3tL+hMBf4usSdPkafPXvlX+3UqluVOOOxVzn6kkbFNMFtfHenwH
BNdiXhAp+9/xWmIjR8yOTAasBfzVPwqKPDyfz1Z3l+VwEe8x6swEtWUhNpY4zI8mV9h0hdwvU4v+
+RC7Qc6rI+QI/veI4VMlR58sr/dhnJMI48MHsQj6jw5VXUPEl7C2rot0aaZqHDJS17njWwIpuPXn
N/93cpJc5llkuP+Dm++d1VRCdGWJX5kQmMpiPf5Z/hhBNO+Zu11H7Py8NxmWeXYH4Apb4UiQ1ZeV
OlQdxyQ4KXPuxSulgxbt1I7l8HRfNZakeiFZ/Du13j8ET0XdQQf3cSiD4FtRIMUsE1w8SdomMsgT
lL4bUiTbxqHmk1D0FoHXXSugyytWCfAZAvDN4ntYLHH47Byow1P7lvjr/D0JaCmXZzokioOqQXNy
dBdDtaSkxXV/t80u7pYvXuq+GAPymluvs8VBhIlsvqHCePwco/0GBCAKvk8vXL4tbUiaNgSdYWCe
58G8xtqEpBAxzwTqOWb9GprR1/4payUpJeeRdypi5QephFmHfiYY8131crOYnCWwIFUoiopQWEEj
90TOyM3JobjIJ4cx6GLXaJeX550GxSuSNIztZ4x/hw02JeUFZzGdxq/ktbpoN1g8mp6ccXO5P4Up
dOzbaAScWwNB3po6Aj5gpa2IdaqRgTXZoiuwmGd+ZNG2w3e6wyNm+7aSsy3AQzFK9LF+tTkdgiui
aoF22YHZqtPRwAKTmLkvfq0uLI+GHb3/XPhX9DDo9lXhrtAeBrJ6WA6JTg93TThvpNTwEpSwmyKs
EGSiIkbnUziXwg6S9fcHYHgizJndeszSimHyncllTrD4wotUMk0Ibl0pGWux0h2qkDCtYsBymlck
eMO0nfXkLve8XncIebaY6dPkX0h/+rrk1480goHhMy5CzWvWvimkHWIzSmHw9jDZZ0mgWpnX/lF+
3A/Ea78OjDXoi4oClQMjjtJTLJFohDYXFpbzdZztQQSS5JtYt8hnB/wvWzr5JsFr5ps6r+Eg0DSn
KQS5yCWZ6fo4iWU+o3EUhhlB6JGZ9j9iSsg+b8Wq3C0ZRhmZfCCPzFqvfkt+VM4GqOBghePCSF4F
/avpMpUxgZJfrye0Rjokr3Gm/60/9gJQK9zEQ0nnsn62U3otGm6AcM9W+ZZSbS7FJcHPTKBCoBRa
PSVr49mkKClPVDTmAYL7XJ5L0ELQ27aCP0V6qOGh7yt1dgEzivG7QzzPq95MuCo0L35Sf5/0kLW+
QOhlg87Xit/kx6hJYwCIltAqIJZTv/96bVaaHqBMSQSy+xmCjdFWTJkyK0D5jOIe4pxv7g4fHrgh
Q8EPu3ik/NXidezRpH3O/BJ9I8aRbQHswEMFCwCkFomgPbaqVG+zOrOwxb1hP7aFbXm/Bw9UQe7t
G1ci606YMUqUQ55fab6oLSng5LEhfb0eYwPjaEw1gW1KRIqWFeKp+0rWPZ47mqHG6VFmuWlQjTPT
VNCvIarMOTtroNS0yRUJqdq1v5P8qXTALrLCDgs2Uf7uAXO5nFqTn+qe/4Pybq5te/b6xkrieEAn
oWbe2uIYqVHV2a140foDRSL6zChtgtelk6hLuZEMR3cwJUG9sW/AX1pDulWe9azhFaAFJjcdM5ai
ztbxTZTvipdiN96vC+HlBha8AUbfxKpJLS2mK9nL+p+2ODlX0gCWEeyaL+X23+mSrZ7xyWLyQAJZ
/XRyByqH1XVSLy5c6mjKOEMZXoAZezdAf5IMScINdoQhXkkYXH2oJQCbV7+Q68Pz1Mc0UEmUpH3y
TEzcyUDwZDC7UG55SezixoFI6aHHFZzzeptZJNHvSUAPKcexstgwPcjjkAY7khn3g0GfqX4jOiDf
JZ/0ivOGP/UfMoirmUVjYDWg2xZo52vKFN+8XzuxrlwDf/wYdItK3moppmUnEBVeXLajkZniFOUg
xvicePoUow4xWGywI/K5y8raA8qIbGxuIVdfSqfMRws9Qt134eEsLbC4cKaHEEq4QZfhiaOTZ53h
vnW3B6FX3HADz0OzICqmc5wFpC0mFrsrQQPhOpEOejrUaSE9wTo79iqBfHDlfvRawlDgBKLQ0spn
loKBCNeZlKuRUQ96Uf5bGnQLfXMOLgL0P+znO9PbhZ2B9wyDhkympouA77M9wV+OpqgOiiMf713b
w5xLA3ZN6WIv4IneE4A7Ys5MlyeB4PwmrbprO20SJusNarS1v77+YdjvAGcNFsoPADXK9G34bFaU
JnmJa53NIEbgMDDD9i0rovoDZPt+PUQoXdWOOjxFqiAuxGSi3Gye2GCpu1td1omjBFtjhdDIljxE
Qpgg8cCVIU1wYGuNFDjLQ5EB0ppeLP056Q9VPl1WbqkvAEZlHpLEnnSrXazKsB26AcKjzjoRR/Fw
ob2zFOMkIYZKEeWFAaOoadc3Ils9sw5UkbFGmExYSpgqreXM42zn8TBFKD4wNFth7HpKN7UGE/Ok
jrSp+MXLxXB1nR21lXeLeeNEVBTSvXhaA128byP8H2IAT011NduGvEN/4JUS2BrusixGhAdiBmi4
2CB/5ks3dLK4fmNUTcjKliHe09/uUf4NQ7N7UTJPAz02QJm2m1iHeLifZM5YGW7dkCW5OvmZ9WKT
W+F6Xe+Lg8hxs+Tm5jHGImS1R5FDOLKbW8a2pJPITIjBCT7Ld/G2DDldhR0Zv9zivoMPdaWrjxJj
iPRghwWJDl6Q3WZwireOxTdRX96ug2X/c4zZbD3fKXHu4I+AHy60etkQe68viBmOVX7gQb0u0YDh
MbFDP0IPBqzDiSlNKaAtBm8Zs01or0hYxvd70zpyZdGnGNWjgCMABfJKejk41sHBWswl181EULPm
Rz4+UH4axUEQfu/xzhBpjnteBDFm3WOBgIEDlZCTkIwbRPcgWpSlMLvnKDJ2fOe8ZFjmOjIp9yHb
XDkqnWwyboPaO4Ycd3qSeeEY/cN1ryTUztlalB1CTGO2rD93fT9wsuJT3DHsZ97x7p+zUnF/EP2Q
/kzsoGgbFDWUnnQuwRZup8ZgA1mUd/JR7SWhAgymyrpzYlcuSPEtS/uR6vKK2IROEzqZIbPn/z/p
rWvBg9OsfYf6gItYAM1K5i2E08/7MDKtbKHlcOkzEskp2ZKtwozME25ovj1GMb+2wfhbCaWX0Chj
jXXuP2XSX9DjgMK6vEn3XctPvjvBw6DB0bpllSRJjGpZGTaakyqvcPosLxKXZaMnAgMv3WM7kSXq
Go0NqctZFlBKuQBCvlUElaENnecXzQQGncJbQOS4ENt9ehxCqod1RLlNN7FWgsBnKHJ8+zIM1YgF
ZgQDHT03xWouVL/YH+1FB/7tDpW1UVz8PYLBIP0mSvPmB/ZmxTStVVUk3K6ba8ZCpsHelyLg+V8Z
6/u3FwrIOuYIHE3V/3MQhp7xxssl8wvZuztZG+xPf0c5mx4nMwF1qJ2786Z8hTlAPNaRNw8Y5sUS
+5dQP1DZp5PJzyEcoKhKt20GCpxTPf8G/K8kvQjWkxYzaAqyK0vXXIO4Y7qRiuycCANbD1y/JI5l
x5xBNA33f2k9g37FHhTOkY/eR67KrwOOXhMa1Fpuon+862jA1QKiygQpMnlaZMbcThqWA+H7mqPZ
Yagx5UVxLbjvTnC0teO0sPz6GLy0BPtWBl2sEEVlL1DQIXfKWam49ETkvfSZMEaFwdiYuVbc4H+b
BCr+z8oTkL5O9CqDskIE3lwZBKlADD1cBGa5Tx/Rq+Xu1dIFQOeruIVHlxRW3qkY8Oi+QQWJgMIz
k2B7XoMXdsuGEWEmQJv2RadVGH+cWhQMI47cGx9RHxADqKNMMz3hTXaKdyc7/w6iHClE1kheQhjd
MtBNPMHZwVI3NGpFDdQFv5hC9shU4ycRsQ47/esRXy0CCJ811TstBUYnQqCS+VAjMf17kfXYh4ri
WQuLnM9io+HCZBtqfXAbODzcX3vQcu0ViR8gGYYaJVW4eaLb5ZVfdIyuT/YmZXsS5IenoHn25XFD
rayjgE+0efijF61sJ5Nuo/gTwlpcQ5BTvgQ5JJiKd2somVr91WboOYKdt+g+FtTBcWtieTn8GOuJ
/JgaN1cv6VSf2rzcQwe46QDkaC8QYJr7cWsQi+3WHLEG7CkL34jcO/ylOMAnK/d0kdrY17D2brkn
0qRhonJM2ezCnNMGvLSYqx/DhFTamNvRUwDXaLPdQmFZvzW4wTpgeeORqB590rvyjJZSEx4gwE4s
LDAX9YKGi0S4kY4+vVJmxBXr4aEuvzJ2WBIfX5UoSwLMojxN+9Yb9/+CrEO3zkLm2UX8mt+ECvWN
BoFLi7wF0l+mZu/X0Z4to4HjAUs60Iv0WjpVuTXc8DkZINKPRWhllFNEbf+3ezwVCwdQhGBprnoQ
LhVYxwIBZkS2GoYgP6yxTY4mjffNWZKiY8S6bjRrgoYzY/n8/2DBClME5qophQjicu8Et1FSYcsw
JWdI7LKihP13nqLI57tp+BZt9VRzNFDaZaDZrb1O0TG4I5cUQlTLr6mw3zvAwiqX4WEwPJqhjgmj
MXVlDM7wIhZVoQV6pVkU4rx5+RPcJzd8LENsvFh6yWCjZOVh+NpZL3010hHdSDdKUS4g4FVvLGM4
CMM9n8/n57fA0coKnmB578POMsjFNPqanvcejiTFlGPHe0BBcZ8sMtD3KSuv3n2vIJuAg/d2vnOE
LloolfCjOF8txkHPyOT0vksKA+Cp0Syf++fW54IndrVqvMfb3IFgshToQ6gv8gRClA+uBNejwTDy
BAd1INL8LlrK7q9DoqQRxyQp1z3Qf1O/UR1nn+xifLWp5lZ6gCfnwIkU1/lzXOdmvosSttDQkU/b
81YW8Ld2rPp0JL5Agr/BP7XNSZYVdiPXSguKmIHuckR8w4us3IQXh9jKuaV9P40y2+qXxIvkJjFu
7XrBrpLl8QZlG3fvdKWFaiqBjsJqJQ54BhMYDIg7gbDIR5Vo8a1A95iSg9W4l1IAA4YBGWSGtrTw
3ENXYpSJ/1EGNF2WZQ+Ykw9vK1WvIcDL1QNPqZg5YL5BCGVeIGaRs5dHhrl5ENCFscrU+HvrDKIQ
y5KLqPj7Wwat0DWHFsYCeZQYVizBcySSFM3Zjxr1hdpQPSg/mhNyBk4im3Nmt+NY3Y0QUYA6G6hE
RyBe6+XJibFOZzYXWU1iZfOUMgYJ78YW7DgZE1JuugA3aNYquxLo0l0XOie4gJr6WRo4RfAevi3o
m4RCG1z4owWdGnqNNevn9W4ir4Pcj4Xm8AILZxLNdPJ82wUhEcHOAdpTwFsyfhvqt8gWS+eEfzBr
t4t1IHLbo8+MnBRjgiVqPaZfmqfmzYb1SEM3WvwrW77LuCXWegHML16Ts7j2vJcA5JfyRH2FDCbg
GN52Zti8dDRdojrs5wY8mb1bYa8ABDmijzHFEs6PfviJRO9tsfmT1h/YEE/Yw/5YlEy5hxyXO5Tw
4hIumGwVRahJsw7mg6NxeQpSoihU4aigaT9BmXnbDKXVWLeM6TZH9v9pIRIv1ubYjYTxMxnVHBug
/mAV1RcVMSDYjKv79FCVn3yIrbWy66psmMUuBmoWWh88ivss1RKu+Zzzc4VxKf/Jr7SuAD6rX6mz
/mMsszk5LgX6WDn0oFPHK3+DH80iRuZ/7zL0+j4YI89rrBzLuHMf2bEbQoB4+zhSOxzzpgtDRPPC
MfezyTUyj91rP530PWEBqY6J80ieicf1Bgqzuv8VqC2RQiVXVBwU5Mj0pkmRel1Qq6bgyhqEdPTg
I7Mj2ZLf6H0i2SKHWp63osrUvtEuWoaPKqhgYROO0xSZGKkwpWGzICPmKasGHRDmi9mJrLoyx+WF
lmlcrYmaorWTxDgTj/O4sG303Nk5arvFDwt99TeTKc0iQkRoGETc9fCus4KUJ4PSq9/tvFFvFcxb
8Gg8HDiOz3gz+gnJtn9HJMf0ST5dYGM+DXQeqYwSJJp3s2/uUAwzlyX/hfEQC2f/UJti8wmrxvjE
KrogOf9mnNNxbjsaL0GGZ17shtKbUlRebQoQ6wYkKrSbkGGAON2Mq02jDo6QCEGXHs6WHolLsrR+
Ic4vx5ECJFCg8v3Z7mZhXrF6/bY0Jw2odrUMvbOfVDSYdm+ZQ4/PtjzVD2e9FYCxfdmDi2T3gY2Q
FIXKD6CCz05QeYV03/aTzYBuBwVwGAfjU+dKwbQVxWeDsx5lLS5EzGypQXsjj2/pH4UBZE8TPXbd
Ocxz1vMKEw+HzXS15pSPKryOb1XTiMwmbX+oWcm7baVwY++9QQ81H1/6NWaLOWutc5EQCef8PoGP
EBPXCjuxdLeI7gY8Yd2t4SuUHHMeWph+kMK5Z+9obW5hsabkPsOLEbuZFeF/vXZVyulg1quHlYL6
p7YkJlPt/8Vdp1XUI/bgDXGOMaEjq05ucfwHxY9YTibgQPHewrFy3cc9bXViD0lzpUkbr2cdGY/o
R6CvduUA7abn006iNwivtjxYHBjohHPf0d47MX921t2PlR4OcKHgcoK24Sdl8QQgKkI+OsPU/Iyu
eNoJJqm2tUoQstXCLXytGhXtpGLW6uRqBvKxz6oa01GX0RtI+XfmCdYcUpSiETxVZbCgXwDe7hyd
Zb9cM5uzEthXadRMSxd0CvnbE+q+tK+mZ+qm3y1oZ1oer7ooY0q5T9MtrZAmnNNOoBqOiTpLYM3W
nAz3PpcrI0R6PzppfOTGn7TDI2hhNLp4MWAvWuadpnDgZZGWpKRzZMXHpOwJC3kd1qzyX2xXsNu4
Zm8nYg4oJfccWmIhwH3dD/7kSyDcWe7JVh4J1V83+9am54Lk+uXlSTd89bVfk5wHuAr0mnLhfxde
LzQlRqj/laY6hEnlTm/30tEHXTJggYz/33R2QHBxDBRU14OYOKtVF/aYcimgZuB+/F996Ash3lA4
4BrlpJbswQUbqbmZ5BDGEI8QKmeOOZdxi4R4Aa6UCAiS1U7lMBow0w+wUj2fIsTDsGnt9OG9lFsr
pnwDcdM1tFvP5PCotyZ9aDqEBpDkdrq8qwHuEtGiYOjA8WE/xbK22xEVERpGJBejvP3I6c67ijue
gKUE/AeADXYDvOsYjOcJmMoV4+pgN+SVqCcaKo2GoLkNZxxBea1sAQbdMGioVuDsZ3NTXn+YsyZb
+ZscvrknJMjKIMc7Ev57rh06y+hfpWCoQ2VDJdaIejkJemohbzqu1PpAKNyuCzZIhoIYDxU9uBrB
BabPTagrNnKU6cXFPEwWmAcirbmhBwelQGINJud64Ngrm4L1qh7lps47aTI7LED8TlQM44N7kJys
ek6fJxqcwKsdj2AGYvoHjYpRsImY4V/0KCjnsDVKh2pkWGLwJr3dTgNnz/OSGLWxSW9h1MBzoxWi
qjUN3qmUa9H9oFDoRSmvXLscvnVBhjjdCXqY7XVRXZovisLydEmAahNNX0mEdB+7Xp8jRxPLaJBx
cuR/+tlFCxZIOeiKDv87WUEAT7US6nygRue1UTSBJKS91swquZl424oBhYioi7JL6z5C69W1Dxk4
inI0X3XfV6y2FDDFgb4I5tkK2N/E4YBmO5U38WN6jGe1v1jnN8cbSgX+owjStdXqxsf31bJp9Fp1
3vLsEwYT37LvaiJEqXZSxgZsNs9Rsxz3bn1L++/zpiwTpkHfP+nIvhrGVxTD93aJKgpprcCkJh/C
aASkPpUvJ3g0X3swL4YHaNSy4QDRPh+FaX+vyuuW4shehS8DMr26peSRlEfdZ7SJUnc3/7ximsh6
q2D/wuizi/rYySj+wjzrIgSUZYwc6dZqyOlS8Yri8k+YhoQOWdFDyjCsrS2EudBoR3TZFD9UbrVg
P1HOYvLXCeUSROVo7bfTIw0ShPaap/OHRlPuc9aO7Kg9itcL+ymeRwNiwb1QzHYdtraiPXkV4My2
CMKBOYg9JDKoajrnnZ6cx9si+3/kaEo1pD8IWhItLBcjieK2QdmzDJCk7HHWimEDlpGWwskTXd+B
R2mjHkNGOsUvTuVCyELLwW+lMAh5z1tr5hPtshouqyzhLz3zQL+D0RzVtFr7OvKREjL5g3Iu2BWJ
833AJM9zGF5jWMY3YNCiiPU1u5nibaBXHO8xWfpoGxaqVh5LLAF19k9ayZN/qJzpxAgc+qGiMPdx
R64wxmPdaq8eb2eT9jYulDaKxD0+R5xCfM2OUIx+3Ajx5qOH20TElRF0J8lw034LoqH6Db/QUjcm
hrSdbDdl+3cv1ws+fG8X11h8hUYviUdKc3If5vVaWj/a0y5s2CCOZpbo+c80yfYo3Q4fpcAOevtU
SKxkzkmTQ5GqomMBA5A+U4pNq/lToNlEQ8MI7FVza2rGcfrPWFalOA0dgq5fOfA6uOehnjPoeDXq
anc1LODFHMZNAY/dUACb99lEeuH3e3etLlaYlrpuX228NOuGz2S6YDCVbLzk4Ci3Za4SykVO81pr
IJ17yaFsylHjngardS1cm5arwGpN/i8FRzjWI9Q2NYnLqBW0P77dZDy7hMK3rBU0fmF6z9N0jN1e
u9kS/WBlKyEgxOjP27lc/gAfjuISBhzgDVHrd7nvtofKtPiF1ekq0TGE5xAa4GXjFK0Em9bqsDAw
x6q6DDGF58qNZhdVgcg3xrZaqoM7lUkzn4L0TJEHukCcy4Bad3JJnzinLLBUzQ16EVc4um7/bhdB
8r88qiAjGSSTlkcW4u/vyEFmLrc2nVun18pBSCwgsAOfzjUTlSSNY7nvI42jQ0iyczL3bzUg4nvv
uvbrMtHZqGNRK9ZlnQp4oX1yzGg7RoCXda6C8glOi6NR3saskeJBAk9gZfNyrakX7O3EC6UdlsJo
+8LdI4vT9O/JuYH9fK1uscdCVXZXNSFGqEIsNJxROs9orUNcuGEMQhQ881WxMVIpkN3Ljh2o6eYO
bafncC1SNgbnKm5zojI1XVAX841Tx6n3kcsvU5Hd5e5+Z7wPwtUuDmoBoeoIG3K6VbZ9zUuOW3uG
gfvcTCrZUEqnXw9jHgyZ2AKuwKHpONF3zx+khb3QtSLQOlD3Ddq3tnWt3QDLphwB0+ZoHQh5Hrr7
qxDUpV4S9J9uh3Lay4yfqpUxaWd/mUZJBtPN8NTLULp7uHNu0he7Z+3XXGwbLlO/HU8e3yg8/Msb
Xp0kTEhNAwzEPflVWWl2Fv4HZYUW7B88ydYqZ/GpXeXjWVkOcYQXPIUHCvv5YATOm2OHx8C+tvcc
PzvsqvJqzyfKmNQ1WVdUqlXr3/9/X7SKvUhMpAZTFqs9rPMSkwxiXpQBUbwQBsqzYSkvNcvMPOiE
2fRJ8XVfHhfBo8+o8fD/aFuznyGf6sOFgWtlYossx0Ay/l0rFtOH4dcgVH4s/snoOy1o14FuSJgN
fXJBCHMJDsmPGUPENWgKHnylEN6djdxrVky/xxFybAYX6+of31Ls/QKYBB7aBcaeQ4knjmdIdu1S
cdF5ap+b2wJyDs3lPR9/L8bOAr+t6L7hQgbxVqdiLLq0Uu7CpziKeuQ0eQZ8B5HRS5ulwkG3LylN
0oWc8QWsQabe3Te72uK6g8zzBbeljM87IJUQwxpQYRP1/0b70DauZ40Y4l4TspEgqmqzWXs+vwRD
75Nfh1ZVtHQmGOp5VccQTnvq9O86V49EtsDjcM0DR4Q65etO/HOF9lFWlbU7O1TKE7rPWzgvMmZW
lTVR737jAimdFfGbYR/Y+Uef/oHgmGewDFbSFXA3FoyDGwOyICLxtE0E4224Jtm3iMP1HgAxsF0R
1Q8CMLjCm+0JyhVR5Xl4hAzUR0+LzdXEOGyADRMudnBa8/tATyBl0AehuP4QUV4GWCJetmvG0eaW
N0ncx5YYQFXLDxZ8xVRnNaUsDK94tieVz3Sn9CTzf/i/KlhtECxZh9D0nuHGvjosu1Y2jWNObumt
jKxkdgA4xZ/VatFptJo+Fp0+CuJxxpy/oNKQn1bWHeZ14x+4Wwfp/ozqPq/KVMjHhJZsPIGk6VQk
DDnuyI47qfwBkoGRe7PpMe0beH2SGZ2Av/ujE0psit5m2Zpfo+SXa9rQ+7HqkHEFqS74SuJEPnIY
KadNVrJoV9YgL9S/K9gApCsRD6/FYQDBjXIMdmYDhbq7XzW+Om0QDjF82LSsFUqwV8/3TaOUWgcn
3dhlbaWh+SifegHrCTkg7eB6Yc3+Nt3n+YwYGqaTu604rPmOny2ifhvMIg40R7VrILiYJ6k4k2PS
hmB0ogHzmflieUcY4O2jz+8Sc++iihLejb2GuNh/rGpwrSGPpmnGv/wKL+HCmvElU/s2ga2YSpJX
S3GLX9cD1/Pb67OKpE9UbFF3EGk1LOrH6GqzYO6nQn2FmFWAvP/cpmhBeZ5qM++M4MCq+Ova/cKF
CN7/CpNUQW/klnZgLivvEk2zanx/Hf7hPXjHv6YMBm3UypWctjBr1xC+SHRZHLj+YOYbpljeOPic
ph4lLZ8uIOmvA8KW3nE3dwgC1hWcGEN7UqZc6Dg+x5XXH3nrLTqWsO7XoFqZUkm6UpqYyoC33kfl
8ZZyi8JNhrnKxN23NEe0Mb0heG4+5DsKPbdZYt0MSvC1XmEqOlxxqhJhceosmWGLNY7aUE72z6Pr
IaLI1vFBi8y5H1C3xjVYYSZS4fdUrFr86YXj0NIIco1PgLh+Qk/bN33GzKrytsWlk/fKe8SXSASV
3ASQlnlN+Qw6CE5hSvPHR7jLpcaB6oMclOwrFBWNjLj8tqeRes5pWx7bUE6MwcIlvpXVuMNKv+DO
42lyjluXZB2V1XDEhNxPrDtk6yB/zV9fNJnvgH2tUw26rlQFqc7j0SalJbOe9g60HaFnDt8mAKpS
+TSqQOmy+AXqLf96vnl90QugxauMqhrk6M+nGeYlKUH08riyCDCA3fR9Mi0HPJ8JbGQni4qa1T8i
CieMRwVR2+eKp7JIV+9SSXOJBfeqXE1M7JFvhWfg0Zg8e8STjwoVabmyWID1aaQHwOeaowcv+NY3
fw75MV2bdpeaFXR1vJflfsx2PplCTMz6AJIYUFXG/w9JLajE74WYyK1SZG92N4i9krCbx0FpFIkG
rHusaZuphvDp0shCG/HaI1ZebDSNxWjPC8ni5HifAYV+AObQpGgB2SHrzZqYme4L0dFWnI6FpSV0
1/4MpG1mtt6niMIxdJ5a8WM+jjpSJ3NqpCIFV9qztE+kFMp+E5fsMI9zvh8Arsgeo7i6AzYzl9Ub
NzsZQhM//sD3YX1Ht2MLCVSxhXSEnwMrTFfIgplhO1Gt60L9YXxXn0zKCTE93m4SGdIHS7Gh64bl
b/hC3XSVelUNCiKvO/FFRJOSvO9qrAIBOkRwknTfesbJsRWQufemYXsG1SuXsYyIsHjOpmg4Tisl
BeUEBw381S6HIotvxQ+RDe3Lp+cqZx+mhITwMkukeyuXvhoFwJauTqQs9JViu6ofkTpbkyPuAqmJ
xwuRnxrgTFBB+zonRBfpMpE+Xzf2V8RsWJeVKmm2dMumovEnH0ZOeMcVl9fx+n7z7oG8Nacae6jK
nov6ph8NjluRUZ5qgfiwPwHDE/NjPpNeOA6de75CBkQOChXkdEhIiX7W8UKZpjnND1aXM6dUOdOe
JWHy0s1pjYT35QrUzXihMycJYfRSZGHwZsxyQzEmcL5DW4hjfgX3xjob9Ue7slQIV0kpBZRf9MtX
Q88OGucmdP07DeKeFnLAg3UOGnH9I0owJ+ABzbTlOAUuufiaa+rm2x8rys8mnvfE+RHQqQNTHv8p
f/0jptpuOuYrU2eb2nCMDLMijE5wANl/cVtjoIOMIWVd8F/964PpIoabI4RMdlBbAPbUN+GGrYyO
fL9NH+AHb4Tui9K8y6cplhmIwHTT1WOEu3ja56RpESdZ78EEQqJCkcymx/IPXreNGJm41pD0w7Qc
4r4aviBp950a6FiMbksyqK/UtM1fPfH4c3AFtJ44uBR7BXYyQpKBtl8fcTQdhBaCYMuFgnzjTx5J
scAyheM9bOQlNL3RNNfkq9F6SKiIb68ju5A1ISsqOcgbYRrXr/GZzf1orexhJvNcLVzVoxQ6A4Fg
JtEgVlLSIXkRYojwcuizxcT9z6kD6HCWxIlcf8MhBmEEvPKy8Zxl9exb/LY290ysBFbZnfdZSIcE
nAa65kRqIKVhka6vx/SuSwa3RCEn52ziVj2wdigAOc5nqoSpwp4Oj5QZJkRfup7Z5dodaTA1+jUY
PJiDe7nyA6SwMxgqfR70F6xXpB416HoyUxOwWqZ4JzcM7UhcYM9rR+tmXHPmNBJg3jysYJAfLlEW
sSwWabaxFVnlri5Q7XJiS7I=
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
