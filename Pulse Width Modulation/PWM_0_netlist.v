//
// Verilog description for cell PWM, 
// 06/07/16 16:15:03
//
// LeonardoSpectrum Level 3, 2012b.6 
//


module PWM ( clock, reset, enable, pwm, counter ) ;

    input clock ;
    input reset ;
    input enable ;
    output pwm ;
    output [4:0]counter ;

    wire nx213, nx4, nx214, nx16, nx215, nx30, nx38, nx216, nx44, nx54, nx82, 
         nx223, nx235, nx238, nx241, nx244, nx248, nx252, nx256, nx258, nx261, 
         nx263, nx265, nx267, nx270, nx274, nx277, nx279, nx281, counter_dup0_2, 
         counter_dup0_0, counter_dup0_1, counter_dup0_4, nx310;
    wire [4:0] \$dummy ;




    nor02 ix55 (.Y (nx54), .A0 (nx235), .A1 (nx256)) ;
    nor02 ix51 (.Y (nx216), .A0 (nx238), .A1 (nx244)) ;
    dffr reg_counter_3 (.Q (\$dummy [0]), .QB (nx238), .D (nx44), .CLK (clock), 
         .R (reset)) ;
    nor03 ix45 (.Y (nx44), .A0 (nx241), .A1 (nx216), .A2 (nx256)) ;
    inv01 ix242 (.Y (nx241), .A (nx38)) ;
    nand02 ix39 (.Y (nx38), .A0 (nx244), .A1 (nx238)) ;
    nand03 ix245 (.Y (nx244), .A0 (counter_dup0_2), .A1 (counter_dup0_1), .A2 (
           counter_dup0_0)) ;
    nor03 ix31 (.Y (nx30), .A0 (nx248), .A1 (nx215), .A2 (nx256)) ;
    aoi21 ix249 (.Y (nx248), .A0 (counter_dup0_1), .A1 (counter_dup0_0), .B0 (
          counter_dup0_2)) ;
    nor03 ix17 (.Y (nx16), .A0 (nx252), .A1 (nx214), .A2 (nx256)) ;
    nor02 ix253 (.Y (nx252), .A0 (counter_dup0_0), .A1 (counter_dup0_1)) ;
    dffr reg_counter_0 (.Q (\$dummy [1]), .QB (nx265), .D (nx4), .CLK (clock), .R (
         reset)) ;
    nor02 ix5 (.Y (nx4), .A0 (counter_dup0_0), .A1 (nx256)) ;
    oai21 ix257 (.Y (nx256), .A0 (nx258), .A1 (nx82), .B0 (enable)) ;
    dffr reg_counter_4 (.Q (\$dummy [2]), .QB (nx258), .D (nx54), .CLK (clock), 
         .R (reset)) ;
    aoi21 ix83 (.Y (nx82), .A0 (counter_dup0_1), .A1 (counter_dup0_0), .B0 (
          nx261)) ;
    nand02 ix262 (.Y (nx261), .A0 (nx238), .A1 (nx263)) ;
    dffr reg_counter_2 (.Q (\$dummy [3]), .QB (nx263), .D (nx30), .CLK (clock), 
         .R (reset)) ;
    nor02 ix23 (.Y (nx214), .A0 (nx267), .A1 (nx265)) ;
    dffr reg_counter_1 (.Q (\$dummy [4]), .QB (nx267), .D (nx16), .CLK (clock), 
         .R (reset)) ;
    nor02 ix37 (.Y (nx215), .A0 (nx263), .A1 (nx270)) ;
    nand02 ix271 (.Y (nx270), .A0 (counter_dup0_1), .A1 (counter_dup0_0)) ;
    oai22 ix224 (.Y (nx223), .A0 (nx274), .A1 (nx213), .B0 (nx279), .B1 (nx281)
          ) ;
    dffr reg_pwm (.Q (pwm), .QB (nx274), .D (nx223), .CLK (clock), .R (reset)) ;
    nand03 ix93 (.Y (nx213), .A0 (counter_dup0_4), .A1 (enable), .A2 (nx277)) ;
    nand03 ix278 (.Y (nx277), .A0 (nx270), .A1 (nx238), .A2 (nx263)) ;
    inv01 ix280 (.Y (nx279), .A (enable)) ;
    nand04 ix282 (.Y (nx281), .A0 (nx258), .A1 (nx238), .A2 (nx263), .A3 (nx267)
           ) ;
    inv01 ix287 (.Y (counter[3]), .A (nx238)) ;
    inv01 ix289 (.Y (counter[2]), .A (nx263)) ;
    inv01 ix291 (.Y (counter_dup0_2), .A (nx263)) ;
    inv01 ix293 (.Y (counter[0]), .A (nx265)) ;
    inv01 ix295 (.Y (counter_dup0_0), .A (nx265)) ;
    inv01 ix297 (.Y (counter[1]), .A (nx267)) ;
    inv01 ix299 (.Y (counter_dup0_1), .A (nx267)) ;
    inv01 ix301 (.Y (counter[4]), .A (nx258)) ;
    inv01 ix303 (.Y (counter_dup0_4), .A (nx258)) ;
    xnor2 ix236 (.Y (nx235), .A0 (nx258), .A1 (nx310)) ;
    inv01 ix309 (.Y (nx310), .A (nx216)) ;
endmodule

