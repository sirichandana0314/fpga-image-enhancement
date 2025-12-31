module tb;

    reg [7:0] R, G, B, threshold_val;
    reg signed [7:0] brightness_offset;
    reg clk;
    reg [2:0] select;

    wire [7:0] final_pixel,gray_out, bright_out, thres_out, downs_out, contrast_out, smooth_out;

    image_processor_top uut(final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out,R, G, B,threshold_val,brightness_offset,select,clk);

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        brightness_offset = 20;
        threshold_val = 100;

        // Test 1
        R=100; G=150; B=200;

        select = 0; #10;  // grayscale
        select = 1; #10;  // brightness
        select = 2; #10;  // threshold
        select = 3; #10;  // downsample
        select = 4; #10;  // contrast stretch
        select = 5; #10;  // smoothing

        // Test 2
        R=250; G=120; B=60;

        select = 0; #10;
        select = 1; #10;
        select = 2; #10;
        select = 3; #10;
        select = 4; #10;
        select = 5; #10;

        $finish;
    end

endmodule
