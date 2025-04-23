`timescale 1ns / 1ps

module uart_top #(
    parameter   NBYTES        = 12,
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );

  reg [NBYTES*8-1:0] rBuffer;

  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX      = 3'b001;
  localparam s_TX           = 3'b010;
  localparam s_WAIT_TX      = 3'b011;
  localparam s_DONE         = 3'b100;

  reg [2:0]   rFSM;

  reg         rTxStart;
  reg [7:0]   rTxByte;
  wire        wTxBusy, wTxDone;

  uart_tx #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE)) UART_TX_INST (
    .iClk(iClk), .iRst(iRst),
    .iTxStart(rTxStart), .iTxByte(rTxByte),
    .oTxSerial(oTx), .oTxBusy(wTxBusy), .oTxDone(wTxDone)
  );

  // === UART RX ===
  wire [7:0] wRxByte;
  wire       wRxDone;

  uart_rx #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE)) UART_RX_INST (
    .iClk(iClk), .iRst(iRst),
    .iRxSerial(iRx), .oRxByte(wRxByte), .oRxDone(wRxDone)
  );

  reg [$clog2(NBYTES):0] rCnt;

  always @(posedge iClk) begin
    if (iRst == 1) begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rBuffer <= 0;
    end else begin
      case (rFSM)

        s_IDLE: begin
          rFSM <= s_WAIT_RX;
          rCnt <= 0;
        end

        s_WAIT_RX: begin
          if (wRxDone && rCnt < NBYTES) begin
            rBuffer <= {rBuffer[NBYTES*8-9:0], wRxByte}; // shift in from right
            rCnt <= rCnt + 1;
          end
          else if (rCnt == NBYTES) begin
            rFSM <= s_TX;
            rCnt <= 0;
          end
        end

        s_TX: begin
          rTxStart <= 0;
          if (rCnt < NBYTES && !wTxBusy) begin
            rFSM <= s_WAIT_TX;
            rTxStart <= 1;
            rTxByte <= rBuffer[NBYTES*8-1:NBYTES*8-8];
            rBuffer <= {rBuffer[NBYTES*8-9:0], 8'b0};
            rCnt <= rCnt + 1;
          end else if (rCnt == NBYTES) begin
            rFSM <= s_DONE;
            rTxStart <= 0;
            rCnt <= 0;
          end
        end

        s_WAIT_TX: begin
         rTxStart <= 0; // drop after 1 cycle
          if (wTxDone) begin
            rFSM <= s_TX;
            rTxStart <= 0;
          end
        end

        s_DONE: begin
          rFSM <= s_IDLE; // go back to idle for continuous echo
        end

        default: rFSM <= s_IDLE;
      endcase
    end
  end

endmodule
