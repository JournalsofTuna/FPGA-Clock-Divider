# FPGA-Clock-Divider
FPGA Clock Divider with Basys 3

A parameterizable counter-based clock divider written in Verilog, validated in simulation via Vivado XSIM, and synthesized on a Digilent Basys 3 FPGA development board (Xilinx Artix-7 xc7a35tcpg236-1).

📌 Overview

FPGA boards typically feature high-frequency system oscillators (e.g., 100 MHz on the Basys 3). This design derives human-scale or communication-scale timebases (such as 1 Hz for a heartbeat LED) from the high-frequency input clock.

Mathematical Model$$F_{out} = \frac{F_{in}}{\text{DIVISOR}}$$For a $100\text{ MHz}$ input clock and a target frequency of $1\text{ Hz}$:
