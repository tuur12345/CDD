`timescale 1ns / 1ps
module uart_rx2 #(
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200,
    // Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085     
    parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
    )
    (
    input wire        iClk, iRst,
    input wire        iRxSerial,
    output wire [7:0] oRxByte, 
    output wire       oRxDone
    );
    // State definition  
    localparam sIDLE         = 3'b000;
    localparam sSTART        = 3'b001;
    localparam sDATA         = 3'b010;
    localparam sSTOP         = 3'b011;
    localparam sDONE         = 3'b100;
  
    reg [2:0] rFSM_Current, wFSM_Next; 
      
    reg [$clog2(CLKS_PER_BIT):0]   rCnt_Current, wCnt_Next;

    reg [2:0] rBit_Current, wBit_Next;
    
    reg [7:0] rRxData_Current, rRxData_Next;
    
    reg rRxDone;
    
    reg rRx1, rRx2;

    always @(posedge iClk)
    begin
        rRx1 <= iRxSerial;
        rRx2 <= rRx1;
    end
  
    always @(posedge iClk)
    begin
        if (iRst==1)
        begin
            rFSM_Current <= sIDLE;
            rCnt_Current <= 0;
            rBit_Current <= 0;
            rRxData_Current <= 0;
            rRxDone <= 0;
        end
        else
        begin
            rFSM_Current <= wFSM_Next;
            rCnt_Current <= wCnt_Next;
            rBit_Current <= wBit_Next;
             rRxDone     <= (wFSM_Next == sDONE);
            rRxData_Current <= rRxData_Next;
        end
    end
    
  always @(*)
        begin
      
            case (rFSM_Current)

            sIDLE :
            begin
                wCnt_Next = 0;
                wBit_Next = 0;
                rRxData_Next = rRxData_Current;
                if (!rRx2) // start bit detected
                begin
                    wFSM_Next = sSTART;
                end
                else
                begin    
                    wFSM_Next = sIDLE;
                end
            end 

            sSTART :
                begin
                    if (rCnt_Current < (CLKS_PER_BIT - 1) )
                    begin
                        wFSM_Next = sSTART;
                        wCnt_Next = rCnt_Current + 1;
                    end
                    else
                    begin
                        wFSM_Next = sDATA;
                        wCnt_Next = 0;
                    end
                end 
           
            sDATA :
                begin
              
                if (rCnt_Current < CLKS_PER_BIT - 1)
                begin
                    wFSM_Next = sDATA;
                    wCnt_Next = rCnt_Current + 1;
                    rRxData_Next = rRxData_Current;
                    wBit_Next = rBit_Current;
                    if (rCnt_Current == (CLKS_PER_BIT)/2)
                    begin
                        rRxData_Next = { rRx2, rRxData_Current[7:1] }; // shift rRxData_Current one bit to the right
                    end
                end
                else
                begin
                    wCnt_Next = 0;
                    if (rBit_Current < 7)
                    begin
                        wFSM_Next = sDATA;
                        wBit_Next = rBit_Current + 1;
                    end
                    else 
                    begin
                        wFSM_Next = sSTOP;
                        wBit_Next = 0;
                    end
                end
                end  

            sSTOP :
            begin
                if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                    wFSM_Next = sSTOP;
                    wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sDONE;
                  wCnt_Next = 0;
                end
            end 
           
          sDONE :
            begin
              rRxData_Next = rRxData_Current;
              wBit_Next = 0;
              wCnt_Next = 0;
              wFSM_Next = sIDLE;
            end
           
           
          default :
            begin
              wFSM_Next = sIDLE;
              wCnt_Next = 0;
              wBit_Next = 0;
              rRxData_Next = 0;
            end 
        endcase
    end
    
  assign oRxByte = rRxData_Current;
  assign oRxDone = rRxDone;
    
    
endmodule