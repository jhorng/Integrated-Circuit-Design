module PWM (clock, reset, enable, pwm, counter);
	
	input clock, reset, enable;
	output pwm;
	output [4:0]counter;
	
	reg pwm;
	reg [4:0]counter;

//	reg [31:0]counter;
	
	always@(posedge clock or posedge reset)
	begin
		if (reset)
		begin
			pwm <= 0;
			counter <= 0;
		end
		else
		begin
			if (enable)
			begin
				if (counter < 2) // counter < 20000
				begin
					pwm <= 1;
					counter <= counter + 1;
				end
				else
				begin
					if (counter < 19) // counter < 200000
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
			else
			begin
				pwm <= 0;
				counter <= 0;
			end
		end
	end
	
endmodule
