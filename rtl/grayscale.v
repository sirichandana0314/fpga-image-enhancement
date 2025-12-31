module grayscale(gray,R,G,B);
    input  [7:0] R, G, B;
    output [7:0] gray;
    assign gray = ((R*30) + (G*59) + (B*11)) / 100;
endmodule
