module brightness(pixel_out,pixel_in,offset);
    input  [7:0] pixel_in;
    input signed  [7:0] offset;
    output reg [7:0] pixel_out;
    reg signed [9:0] temp;
      always @(*) begin
                
        temp = pixel_in + offset;
       
        if (temp < 0) 
            pixel_out = 0;
       

        else if (temp > 255) 
            pixel_out = 255;
        

        else 
            pixel_out = temp[7:0];   
        
    end
endmodule
