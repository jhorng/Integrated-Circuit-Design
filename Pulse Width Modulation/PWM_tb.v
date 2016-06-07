module PWM_tb();

	reg clock, reset, enable;
	wire pwm;
	wire [4:0]counter;
	
initial
begin
	clock=0;
	reset=1;
	enable=0;
	#2 reset=0;
	#10 enable=1;
	#100 enable=0;
	#100 enable=1;
	#300 $finish;
end
	
always #1 clock=~clock;

PWM module1(clock, reset, enable, pwm, counter);

endmodule
