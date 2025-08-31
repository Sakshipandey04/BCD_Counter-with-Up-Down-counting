`timescale 1ns / 1ps

// Module Name: tb_BCD_counter
// Project Name: BCD Counter with Up Down counting

module tb_BCD_counter;
     reg clk, rst, up_down;
     wire [3:0] bcd_out;
     
     BCD_counter uut(
     .clk(clk),
     .rst(rst),
     .up_down(up_down),
     .bcd_out(bcd_out)
     );
     
     always #5 clk= ~clk;
     
     initial begin
        clk=0;
        rst = 1;
        up_down=1;
        #10 rst =0;
        
        up_down =  1;
        #100; 
        
        up_down = 0;
        #100;
        
        rst =1;
        #10 rst =0;
        #50;
        
        $stop;
     end
        
     
endmodule
