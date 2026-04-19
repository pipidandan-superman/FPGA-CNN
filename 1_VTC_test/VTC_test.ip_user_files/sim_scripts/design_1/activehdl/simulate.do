onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xpm -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
