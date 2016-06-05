module PWM (
	input clock, reset,
	output reg pwm
);

	reg [31:0]counter;
	
	always@(posedge clock, posedge reset)
	begin
		if (reset)
		begin
			pwm <= 0;
			counter <= 0;
		end
		else
		begin
			if (counter < 2) // counter < 20000
			begin
				pwm <= 1;
				counter <= counter + 1;
			end
			else
			begin
				if (counter < 20) // counter < 200000
				begin
					pwm <= 0;
					counter <= counter + 1;
				end
				else
				begin
					counter <= 0;
				end
			end
		end
	end
	
endmodule
