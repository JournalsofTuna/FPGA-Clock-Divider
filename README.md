# FPGA-Clock-Divider
FPGA Clock Divider with Basys 3

A parameterizable counter-based clock divider written in Verilog, validated in simulation via Vivado XSIM, and synthesized on a Digilent Basys 3 FPGA development board (Xilinx Artix-7 xc7a35tcpg236-1).

📌 Overview

FPGA boards typically feature high-frequency system oscillators (e.g., 100 MHz on the Basys 3). This design derives human-scale or communication-scale timebases (such as 1 Hz for a heartbeat LED) from the high-frequency input clock.

Mathematical Model: Fout = Fin/DIVISOR

For a 100 MHz input clock and a target frequency of 1 Hz

DIVISOR : 100 x 10^6 Hz /  1 Hz = 100 000 000

To maintain a 50% duty cycle, the counter toggles the output halfway through the period:

Counter Range : 0 to DIVISOR - 1
clock_out =  1 when counter  < DIVISOR / 2
clock_out = 0 when counter >= DIVISOR / 2

Here is a view from the testbench simulation:
<img width="691" height="332" alt="image" src="https://github.com/user-attachments/assets/de39fccc-69c9-49ac-aadc-bdf826bae37a" />
