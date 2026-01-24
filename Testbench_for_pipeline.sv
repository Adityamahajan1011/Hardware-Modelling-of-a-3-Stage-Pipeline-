module tb_pipe;
reg clk1,clk2;
reg [4:0] a, b, c, d;
wire [11:0] f ; 
pipee p(a,b,c,d,clk1,clk2,f);
initial begin
    clk1 = 0 ; 
    clk2 = 1 ; 
    $dumpfile("tb_pipe.vcd");
    $dumpvars(0, tb_pipe);
    #300 $finish ; 
end
always  begin
    #10 clk1 = ~clk1 ;
    #10 clk2 = ~clk2 ;
end



initial begin
    begin
        #5 a = 15 ; b = 13 ; c = 16 ; d = 14 ; 
        #20 a = 16 ; b = 14 ; c = 17 ; d = 15 ; 
        #20 a = 17 ; b = 15 ; c = 18 ; d = 16 ; 
        #20 a = 18 ; b = 16 ; c = 19 ; d = 17 ; 
        #20 a = 19 ; b = 17 ; c = 20 ; d = 18 ; 
end 

initial begin
   $monitor("time=%t a=%d b=%d c = %d d = %d f = %d ", $time, a,b,c,d,f);
end


endmodule
