// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Apr  8 15:17:23 2025
// Host        : E10-1794CE36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/Documents/vivado_projs/ES3B2/Snake_Game_v1.4_workingApple/Snake_Game_v1.4_workingApple/Snake_Game_v1.4_workingApple.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [11:0]douta;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2716 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "900" *) 
  (* C_READ_DEPTH_B = "900" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "900" *) 
  (* C_WRITE_DEPTH_B = "900" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18224)
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
