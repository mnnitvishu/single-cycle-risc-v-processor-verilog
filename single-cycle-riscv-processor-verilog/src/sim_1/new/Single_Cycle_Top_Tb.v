`timescale 1ns / 1ps

module Single_Cycle_Top_Tb;

    // Inputs
    reg clk;
    reg rst;

    // Outputs / Monitored Signals
    wire [31:0] PC_Top;
    wire [31:0] RD_Instr;
    wire [31:0] RD1_Top;
    wire [31:0] Imm_Ext_Top;
    wire [31:0] ALUResult;
    wire [31:0] ReadData;
    wire [31:0] PCPlus4;
    wire [31:0] RD2_Top;
    wire [31:0] SrcB;
    wire [31:0] Result;
    
    wire RegWrite;
    wire MemWrite;
    wire ALUSrc;
    wire ResultSrc;
    wire [2:0] ALUControl_Top;

    // Instantiate the Device Under Test (DUT)
    Single_Cycle_Top dut (
        .clk(clk),
        .rst(rst)
    );

    // Clock Generation (100MHz -> 10ns period)
    always begin
        #5 clk = ~clk;
    end

    initial begin
        // Initialize Inputs
        clk = 0;
        
        // 1. SYSTEM RESET: Tumhare code ke hisab se rst = 0 par RESET HOGA
        rst = 0; 

        // Wait for 20ns to let the reset values settle properly
        #20;
        
        // 2. START EXECUTION: rst = 1 karne par hardware normal kaam shuru karega
        rst = 1; 
        
        // Simulation ko chalne do taaki instructions load ho sakein
        #200;
        
        // Finish simulation
        $finish;
    end
      
    // Optional: Monitor signals in Tcl Console
    initial begin
        $monitor("Time=%0t | PC=%h | Instr=%h | Result=%h", $time, dut.PC_Top, dut.RD_Instr, dut.Result);
    end

endmodule