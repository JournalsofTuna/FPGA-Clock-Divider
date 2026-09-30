# 100 MHz Osilatör Girişi (clk_in)
set_property PACKAGE_PIN W5 [get_ports clock_in]							
set_property IOSTANDARD LVCMOS33 [get_ports clock_in]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock_in]

# Reset Butonu (Orta buton: btnC)
set_property PACKAGE_PIN U18 [get_ports rst]						
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# Çıkış LED'i (En sağdaki LED: LD0)
set_property PACKAGE_PIN U16 [get_ports clock_out]					
set_property IOSTANDARD LVCMOS33 [get_ports clock_out]