`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2025 16:14:47
// Design Name: 
// Module Name: tb_traffic_lights
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/1ps

module traffic_lights_tb;

    // Testbench signals
    reg clk;
    reg reset;
    wire red, yellow, green, ped_red, ped_green;

    // Instantiate DUT (Device Under Test)
    traffic_lights uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green),
        .ped_red(ped_red),
        .ped_green(ped_green)
    );

    // Clock generation: 10ns period (100 MHz)
    always #5 clk = ~clk;

    // Initial stimulus
    initial begin
        // Initialize
        clk = 0;
        reset = 1;

        // Apply reset for 20ns
        #20;
        reset = 0;

        // Run simulation for 2000ns (~2us)
        #2000;
        $stop;   // stops the simulation
    end

endmodule
