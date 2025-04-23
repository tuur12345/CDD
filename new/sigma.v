`timescale 1ns / 1ps

module uart_rx #(
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200,
    // Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085 
    parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
  )
  (
   input wire       iClk, iRst,
   input wire        iRxSerial,
   output wire [7:0] oRxByte, 
   output wire       oRxDone
   
   );
  
  // State definition  
  localparam sIDLE      = 3'b000;
  localparam sSTART     = 3'b001;
  localparam sDATA      = 3'b010;
  localparam sSTOP      = 3'b011;
  localparam sDONE      = 3'b100;
  
  // Register variables required to drive the FSM
  //---------------------------------------------
  // Remember:  -> 'current' is the register output
  //            -> 'next' is the register input
  
  // -> FSM state
  reg [2:0] rFSM_Current, wFSM_Next; 
  
  // -> counter to keep track of the clock cycles
  reg [$clog2(CLKS_PER_BIT):0]   rCnt_Current, wCnt_Next;
    
  // -> counter to keep track of sent bits
  // (between 0 and 7)
  reg [2:0] rBit_Current, wBit_Next;
  
  // -> the byte we want to send (we store an internal copy)
  reg [7:0] rRxByte_Current, wRxByte_Next;
  reg rRxDone;

   // Double-register the input wire to prevent metastability issues
   reg rRx1, rRx2;
   
   always @(posedge iClk) begin
        rRx1 <= iRxSerial;
        rRx2 <= rRx1;
    end
  
  
  // Describe all previous registers
  //------------------------------------------ 
  // Needs to be done with a clocked always block 
  // Don't forget the synchronous reset (default state)
  
  always @(posedge iClk)
  begin
    if (iRst==1)
      begin
        rFSM_Current <= sIDLE;
        rCnt_Current <= 0;
        rBit_Current <= 0;
        rRxByte_Current <= 0;
        rRxDone         <= 0;
      end
    else
      begin
        rFSM_Current <= wFSM_Next;
        rCnt_Current <= wCnt_Next;
        rBit_Current <= wBit_Next;
        rRxByte_Current <= wRxByte_Next;
        rRxDone         <= (wFSM_Next == sDONE);
      end
  end
  
  // Next state logic
  //------------------------------------------ 
     
  always @(*)
    begin
      
      case (rFSM_Current)   
        sIDLE : begin
            wCnt_Next = 0;
            wBit_Next = 0;
            wRxByte_Next = rRxByte_Current;
                if (!rRx2) // Start bit detected (low level)
                    wFSM_Next = sSTART;
                else
                    wFSM_Next = sIDLE;             
      end 
     sSTART: begin
                if (rCnt_Current < (CLKS_PER_BIT / 2)) begin
                    wFSM_Next = sSTART;
                    wCnt_Next = rCnt_Current + 1;
                end else begin
                    wFSM_Next = sDATA;
                    wCnt_Next = 0;
                end
            end
          
         sDATA: begin
              
                if (rCnt_Current < CLKS_PER_BIT-1) begin
                    wFSM_Next = sDATA;
                    wCnt_Next = rCnt_Current + 1;
                        wBit_Next = rBit_Current;
                        wRxByte_Next = rRxByte_Current;
                    if (rCnt_Current == (CLKS_PER_BIT / 2)) begin
                        wRxByte_Next = {rRx2, rRxByte_Current[7:1]}; // Sample in het midden
                    end
                end 

                else begin
                    wCnt_Next = 0;
                   // wRxByte_Next = {rRx2, rRxByte_Current[7:1]}; // Sample in het midden

                    if (rBit_Current < 7) begin
                        wFSM_Next = sDATA;
                        wBit_Next = rBit_Current + 1;
                    end else begin
                        wFSM_Next = sSTOP;
                        wBit_Next = 0;
                    end
                end
            end
           
          sSTOP: begin
                if (rCnt_Current < CLKS_PER_BIT - 1) begin
                    wFSM_Next = sSTOP;
                    wCnt_Next = rCnt_Current + 1;
                end else begin
                    wFSM_Next = sDONE;
                    wCnt_Next = 0;
                end
            end
            
            sDONE: begin
                wFSM_Next = sIDLE;
                wCnt_Next = 0;
                wBit_Next = 0;
                wRxByte_Next = rRxByte_Current;
            end
            
            default: begin
                wFSM_Next = sIDLE;
                wCnt_Next = 0;
                wBit_Next = 0;
                wRxByte_Next = 0;
            end
        endcase
    end
 
  // 3. Output logic
  //------------------------------------------ 

  assign oRxByte = rRxByte_Current;
  assign oRxDone = rRxDone;
   
endmodule