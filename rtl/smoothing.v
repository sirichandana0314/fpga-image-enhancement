module smoothing(pixel_out,pixel0,pixel1,pixel2);
    input  [7:0] pixel0;
    input  [7:0] pixel1;
    input  [7:0] pixel2;
    output [7:0] pixel_out;

   assign pixel_out = (pixel0 + pixel1 + pixel2) / 3;

endmodule
