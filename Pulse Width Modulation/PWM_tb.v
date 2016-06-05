module PWM_tb();

	reg clock, reset;
	wire pwm;
	
initial
begin
	clock=0;
	reset=1;
	#2 reset=0;
	#300 $finish;
end
	
always #1 clock=~clock;

PWM module1(clock, reset, pwm);

endmodule
