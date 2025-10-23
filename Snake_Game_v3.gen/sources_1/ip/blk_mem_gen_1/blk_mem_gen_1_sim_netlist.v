// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Apr  8 15:35:28 2025
// Host        : E10-1794CE36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/Documents/vivado_projs/ES3B2/Snake_Game_v1.4_workingApple/Snake_Game_v1.4_workingApple/Snake_Game_v1.4_workingApple.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "400" *) 
  (* C_READ_DEPTH_B = "400" *) 
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
  (* C_WRITE_DEPTH_A = "400" *) 
  (* C_WRITE_DEPTH_B = "400" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19664)
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
