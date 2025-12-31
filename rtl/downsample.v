module downsample(pixel_out,pixel_in,clk);
    input  [7:0] pixel_in;
    input        clk;
    output [7:0] pixel_out;

    reg [7:0] counter = 0,last_pixel = 0;

    always @(posedge clk) 
    begin
        counter <= counter + 1;
        if (counter == 2) 
        begin
            last_pixel <= pixel_in;
            counter <= 0;
        end
    end

    assign pixel_out = last_pixel;

endmodule
