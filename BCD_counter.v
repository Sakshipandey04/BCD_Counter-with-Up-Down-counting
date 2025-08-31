`timescale 1ns / 1ps

// Create Date: 31.08.2025 19:21:23
// Module Name: BCD_counter
// Project Name: BCD Counter with Up down count

module BCD_counter(
    input clk,
    input rst,
    input up_down,
    output reg[3:0] bcd_out
    );
    
    always@(posedge clk or posedge rst)begin
         if(rst)begin
            bcd_out <= 4'd0; //reset to 0
         end else begin
            if(up_down)begin
              //UP counting
                if(bcd_out == 4'd9)
                   bcd_out <= 4'd0;
                else
                  bcd_out <= bcd_out +1;
             end else begin
               //DOWN counting
                 if(bcd_out == 4'd0)
                    bcd_out <= 4'd9;
                 else
                    bcd_out <= bcd_out -1;
                  end
               end
           end
                  
endmodule
