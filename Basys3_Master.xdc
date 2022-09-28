## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_but_IBUF[0]]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_but_IBUF[1]]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_but_IBUF[2]]

# Switches
set_property PACKAGE_PIN V17 [get_ports {i_sw[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {i_sw[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {i_sw[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {i_sw[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {i_sw[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[4]}]
set_property PACKAGE_PIN V15 [get_ports {i_sw[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[5]}]
set_property PACKAGE_PIN W14 [get_ports {i_sw[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[6]}]
set_property PACKAGE_PIN W13 [get_ports {i_sw[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_sw[7]}]

# LEDs
set_property PACKAGE_PIN U16 [get_ports {o_res[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[0]}]
set_property PACKAGE_PIN E19 [get_ports {o_res[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[1]}]
set_property PACKAGE_PIN U19 [get_ports {o_res[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[2]}]
set_property PACKAGE_PIN V19 [get_ports {o_res[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[3]}]
set_property PACKAGE_PIN W18 [get_ports {o_res[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[4]}]
set_property PACKAGE_PIN U15 [get_ports {o_res[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[5]}]
set_property PACKAGE_PIN U14 [get_ports {o_res[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[6]}]
set_property PACKAGE_PIN V14 [get_ports {o_res[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[7]}]
set_property PACKAGE_PIN V13 [get_ports {o_res[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {o_res[8]}]
	
##Buttons
set_property PACKAGE_PIN U18 [get_ports i_but[1]]						
	set_property IOSTANDARD LVCMOS33 [get_ports i_but[1]]
set_property PACKAGE_PIN T18 [get_ports i_but[2]]						
	set_property IOSTANDARD LVCMOS33 [get_ports i_but[2]]
set_property PACKAGE_PIN U17 [get_ports i_but[0]]						
	set_property IOSTANDARD LVCMOS33 [get_ports i_but[0]]

