//Module to implement 16 feistel cycles
//
//18.11.2019

module feistel_cycles #(parameter CIPHER_WIDTH = 64,
                        parameter FEISTEL_WIDTH = 32
)
(
    input wire clk,
    input wire rst,
    input wire [CIPHER_WIDTH - 1 : 0] in_data,

    input wire [FEISTEL_WIDTH - 1 : 0] feistel_res,
    output wire [FEISTEL_WIDTH - 1 : 0] r_feist_data,

	output wire [CIPHER_WIDTH - 1 : 0] transp_data
);

    reg [4 : 0] cycle_counter;
    reg [31 : 0] left_bits;
    reg [31 : 0] right_bits;


    always@(posedge clk)
    begin 
        if(rst)
        begin
            cycle_counter <= 0;
        end
        else if (cycle_counter == 15)
        begin
            cycle_counter <=  0;
        end
        else
        begin
            cycle_counter <= cycle_counter + 1;
        end
    end

    always@(posedge clk)
    begin
        if(rst)
        begin
            left_bits <= 0;
        end
        else
        begin
            if(cycle_counter == 0)
            begin 
                left_bits <= in_data[CIPHER_WIDTH - 1 : 32];
            end
            else 
            begin
                left_bits <= right_bits;  //from the previous cycle
            end
        end
    end

    always@(posedge clk)
    begin
        if(rst)
        begin
            right_bits <= 0;
        end
        else
        begin
            if(cycle == 0)
            begin
                right_bits <= in_data[31 : 0];
            end
            else
            begin
                right_bits <= left_bits ^ feistel_res;
            end
        end
    end

    always@(posedge clk)
    begin
        if(cycle != 15)
        begin
            r_feist_data <= right_bits;
        end
    end


endmodule   