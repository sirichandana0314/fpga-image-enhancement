module image_processor_top(final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out,R, G, B,threshold_val,brightness_offset,select,clk);
    
    output [7:0] final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out;

    input  [7:0] R, G, B,threshold_val;
    input  signed [7:0] brightness_offset;
    input  [2:0] select;
    input clk;

    wire [7:0] gray, bright, thres, downs, contrast, smooth;
    reg [7:0] out_reg;
       
    // 1. Grayscale
    grayscale u1(gray, R, G, B);
    assign gray_out = gray;

    // 2. Brightness Adjustment
    brightness u2(bright, gray, brightness_offset);
    assign bright_out = bright;

    // 3. Thresholding
    thresholding u3(thres, bright, threshold_val);
    assign thres_out = thres;

    // 4. Downsampling
    downsample u4(downs, thres, clk);
    assign downs_out = downs;

    // 5. Contrast Stretching
    contrast_stretch u5(contrast, downs);
    assign contrast_out = contrast;

    // 6. Smoothing filter (final stage)
    smoothing u6(smooth, downs, contrast, bright);
    assign smooth_out = smooth;


    always @(*) begin
        case(select)
            3'd0: out_reg = gray;
            3'd1: out_reg = bright;
            3'd2: out_reg = thres;
            3'd3: out_reg = downs;
            3'd4: out_reg = contrast;
            3'd5: out_reg = smooth;
            default: out_reg = 8'd0;
        endcase
    end

    assign final_pixel = out_reg;

endmodule
module image_processor_top(final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out,R, G, B,threshold_val,brightness_offset,select,clk);
    
    output [7:0] final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out;

    input  [7:0] R, G, B,threshold_val;
    input  signed [7:0] brightness_offset;
    input  [2:0] select;
    input clk;

    wire [7:0] gray, bright, thres, downs, contrast, smooth;
    reg [7:0] out_reg;
       
    // 1. Grayscale
    grayscale u1(gray, R, G, B);
    assign gray_out = gray;

    // 2. Brightness Adjustment
    brightness u2(bright, gray, brightness_offset);
    assign bright_out = bright;

    // 3. Thresholding
    thresholding u3(thres, bright, threshold_val);
    assign thres_out = thres;

    // 4. Downsampling
    downsample u4(downs, thres, clk);
    assign downs_out = downs;

    // 5. Contrast Stretching
    contrast_stretch u5(contrast, downs);
    assign contrast_out = contrast;

    // 6. Smoothing filter (final stage)
    smoothing u6(smooth, downs, contrast, bright);
    assign smooth_out = smooth;


    always @(*) begin
        case(select)
            3'd0: out_reg = gray;
            3'd1: out_reg = bright;
            3'd2: out_reg = thres;
            3'd3: out_reg = downs;
            3'd4: out_reg = contrast;
            3'd5: out_reg = smooth;
            default: out_reg = 8'd0;
        endcase
    end

    assign final_pixel = out_reg;

endmodule
module image_processor_top(final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out,R, G, B,threshold_val,brightness_offset,select,clk);
    
    output [7:0] final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out;

    input  [7:0] R, G, B,threshold_val;
    input  signed [7:0] brightness_offset;
    input  [2:0] select;
    input clk;

    wire [7:0] gray, bright, thres, downs, contrast, smooth;
    reg [7:0] out_reg;
       
    // 1. Grayscale
    grayscale u1(gray, R, G, B);
    assign gray_out = gray;

    // 2. Brightness Adjustment
    brightness u2(bright, gray, brightness_offset);
    assign bright_out = bright;

    // 3. Thresholding
    thresholding u3(thres, bright, threshold_val);
    assign thres_out = thres;

    // 4. Downsampling
    downsample u4(downs, thres, clk);
    assign downs_out = downs;

    // 5. Contrast Stretching
    contrast_stretch u5(contrast, downs);
    assign contrast_out = contrast;

    // 6. Smoothing filter (final stage)
    smoothing u6(smooth, downs, contrast, bright);
    assign smooth_out = smooth;


    always @(*) begin
        case(select)
            3'd0: out_reg = gray;
            3'd1: out_reg = bright;
            3'd2: out_reg = thres;
            3'd3: out_reg = downs;
            3'd4: out_reg = contrast;
            3'd5: out_reg = smooth;
            default: out_reg = 8'd0;
        endcase
    end

    assign final_pixel = out_reg;

endmodule
module image_processor_top(final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out,R, G, B,threshold_val,brightness_offset,select,clk);
    
    output [7:0] final_pixel, gray_out,bright_out, thres_out, downs_out,contrast_out,smooth_out;

    input  [7:0] R, G, B,threshold_val;
    input  signed [7:0] brightness_offset;
    input  [2:0] select;
    input clk;

    wire [7:0] gray, bright, thres, downs, contrast, smooth;
    reg [7:0] out_reg;
       
    // 1. Grayscale
    grayscale u1(gray, R, G, B);
    assign gray_out = gray;

    // 2. Brightness Adjustment
    brightness u2(bright, gray, brightness_offset);
    assign bright_out = bright;

    // 3. Thresholding
    thresholding u3(thres, bright, threshold_val);
    assign thres_out = thres;

    // 4. Downsampling
    downsample u4(downs, thres, clk);
    assign downs_out = downs;

    // 5. Contrast Stretching
    contrast_stretch u5(contrast, downs);
    assign contrast_out = contrast;

    // 6. Smoothing filter (final stage)
    smoothing u6(smooth, downs, contrast, bright);
    assign smooth_out = smooth;


    always @(*) begin
        case(select)
            3'd0: out_reg = gray;
            3'd1: out_reg = bright;
            3'd2: out_reg = thres;
            3'd3: out_reg = downs;
            3'd4: out_reg = contrast;
            3'd5: out_reg = smooth;
            default: out_reg = 8'd0;
        endcase
    end

    assign final_pixel = out_reg;

endmodule
