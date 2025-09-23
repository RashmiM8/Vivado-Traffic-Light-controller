`timescale 1ns/1ps

module tb_traffic;

    reg clk;
    reg reset;
    wire [2:0] lights;

    // Instantiate DUT
    traffic uut (
        .clk(clk),
        .reset(reset),
        .lights(lights)
    );

    // Clock generator
    always #5 clk = ~clk;   // 100 MHz → 10ns period

    initial begin
        // Initialize
        clk = 0;
        reset = 1;
        #20 reset = 0;

        // Run simulation for some time
        #20000000;   // adjust depending on delays
        $stop;
    end

endmodule
