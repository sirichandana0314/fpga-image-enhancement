module contrast_stretch(pixel_out,pixel_in);
    input  [7:0] pixel_in;
    output [7:0] pixel_out;

    parameter MIN = 50;
    parameter MAX = 200;

    reg [15:0] temp_reg;

    always @(*) begin
    if (pixel_in <= MIN) 
        // Too dark ? clamp to 0
        temp_reg = 0;
    
    else if (pixel_in >= MAX) 
        // Too bright ? clamp to 255
        temp_reg = 255;
    
    else 
        // Inside the valid range ? apply contrast stretching formula
        temp_reg = ((pixel_in - MIN) * 255) / (MAX - MIN);
    
end

    assign pixel_out = temp_reg[7:0];

endmodule
