// PYNQ-Z2: turn on LED0 and LED3, off LED1 and LED2
module top(
    output [3:0] led
);
    assign led = 4'b1001;  // [LED3 LED2 LED1 LED0]
endmodule
