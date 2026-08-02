// Copyright 2023 MERL-DSU

//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at

//        http://www.apache.org/licenses/LICENSE-2.0

//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

module Register_File(
    input clk,
    input rst,
    input WE3,
    input [31:0] WD3,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    output [31:0] RD1,
    output [31:0] RD2
);

    reg [31:0] Register [31:0];
    integer i;

    // Sequential Write & Reset Logic (Active-Low Reset as per your Testbench)
    always @ (posedge clk)
    begin
        if (~rst) begin
            // Reset aane par saare registers ko 00000000 karo taaki X state na aaye
            for (i = 0; i < 32; i = i + 1) begin
                Register[i] <= 32'h00000000;
            end
        end
        else if (WE3 && (A3 != 5'b00000)) begin
            // x0 register me kabhi write nahi hona chahiye
            Register[A3] <= WD3;
        end
    end

    // Combinational Read Logic: x0 register hamesha 0 read karega
    assign RD1 = (~rst) ? 32'd0 : ((A1 == 5'b00000) ? 32'd0 : Register[A1]);
    assign RD2 = (~rst) ? 32'd0 : ((A2 == 5'b00000) ? 32'd0 : Register[A2]);

endmodule