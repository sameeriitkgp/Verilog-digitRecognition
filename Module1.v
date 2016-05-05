`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:17:43 12/01/2015 
// Design Name: 
// Module Name:    Module1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Module1( current, reference, clock, temp, index, output1 
    );
	 
	 // Inputs
	 input [7:0] current;
	 input [7:0] reference;
	 input clock;
	 input temp;
	 input [3:0] index;
	 output [3:0] output1;
	 
	 reg [15:0] product;
	 reg [31:0] sum;
	 reg [31:0] max;
	 reg [31:0] temp1;
	 reg [3:0] temp2;
	 
	 // Initialise sum and max reg
	 initial begin
	 sum = 32'b0;
	 max = 32'b0;
	 end
	 
	 
	always @(posedge clock) begin
		if( temp == 1 ) begin  // Update inside loop
			product = current * reference;
			sum = sum + product;
		end
		
		else begin // temp == 0, compare with previous max value
		if ( sum > max ) begin
		max = sum; // update max
		temp2 = index; // update max_index
		end
		sum = 32'b0; // reset sum register
		end
		end
		assign output1 = temp2; // final output
		
endmodule
