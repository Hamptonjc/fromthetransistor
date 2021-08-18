
module led_blink(i_clock,
		 i_enable,
		 i_switch_1,
		 i_switch_2,
		 o_led_drive
	 	);
	
	// Define inputs/outputs
	input i_clock;
	input i_enable;
	input i_switch_1;
	input i_switch_2;
	output o_led_drive;

	// (parameter: Constructs that allow a module to reused with
	// a different spec.)
	// These are used to create the frequencies needed
	// (clock_speed / needed freq * 50% duty cycle)
	parameter c_CNT_100HZ = 125;
	parameter c_CNT_50HZ = 250;
	parameter c_CNT_10HZ = 1250;
	parameter c_CNT_1HZ = 12500;

	// counters: (reg: data storage elements in verilog)
	reg [31:0] r_CNT_100HZ = 0;
	reg [31:0] r_CNT_50HZ = 0;
	reg [31:0] r_CNT_10HZ = 0;
	reg [31:0] r_CNT_1HZ = 0;

	// signals will toggle at the freq. needed:
	reg r_TOGGLE_100HZ = 1'b0;
	reg r_TOGGLE_50HZ = 1'b0;
	reg r_TOGGLE_10HZ = 1'b0;
	reg r_TOGGLE_1HZ = 1'b0;

	// 1-bit select
	reg r_LED_SELECT;
	wire w_LED_SELECT;

begin
	always @ (posedge i_clock)
		begin


	













