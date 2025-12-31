module thresholding(pixel_out,pixel_in,threshold);
    input [7:0] pixel_in,threshold;
    output [7:0] pixel_out;
    assign pixel_out = (pixel_in > threshold) ? 8'd255 : 8'd0;
endmodule
