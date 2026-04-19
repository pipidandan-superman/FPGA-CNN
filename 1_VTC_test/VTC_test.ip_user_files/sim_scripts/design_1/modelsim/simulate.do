onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
