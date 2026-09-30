`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module clock_divider #(
    parameter integer DIVISOR = 28'd100_000_000 // 100 MHz giris -> 1 Hz cikis icin 
    )(
        input wire clock_in, // Basys 3 100 MHz Osilatoru (WS)
        input wire rst, // Donanimsal Sifirlama pini.
        output reg clock_out // LED0 (U16)
    );
    
        // Divisor degerini tutabilecek genislikte sayac
        reg [27:0] counter;
        
        always @(posedge clock_in or posedge rst) begin
            if(rst) begin
               counter <= 28'd0;
               clock_out <= 1'b0;
         end else begin
         if (counter >= (DIVISOR - 1)) begin
            counter <= 28'd0;
           end else begin
            counter <= counter + 28'd1;
         end
         
         // %50 Duty Cycle uretimi (Cift Bolenler icin ideal)
         clock_out <= (counter < (DIVISOR / 2)) ? 1'b1 : 1'b0;
       end
     end
endmodule
