`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module tb_clock_divider;

    reg clk_in;
    reg rst;
    wire clk_out;
    
    // Simulasyon hizlandirmasi icin DIVISOR = 8 (Giris 100 MHz ise Cikis 12,5 MHz)
    clock_divider #(
        .DIVISOR(8)
     ) uut (
        .clock_in(clk_in),
        .rst(rst),
        .clock_out(clk_out)
        );
       
       
       // 100 MHz Giris Saati Uretimi (Periyot = 10ns -> 6ns HIGH / 5ns Low)
       always #5 clk_in = ~clk_in;
       
       initial begin
            // Baslangic kosullari
            clk_in = 0;
            rst = 1;
            #20;
            
            // Reset Kaldiriliyor
          rst = 0;
          
          // 200ns boyunca davranisi gozlemle.
          #200;
          $finish;
       end
      
endmodule
