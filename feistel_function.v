module feistel_function #(parameter KEY_WIDTH = 48,
                        parameter FEISTEL_WIDTH = 32,
                        parameter BLCOK_WIDTH = 6,
                        parameter NUM_OF_BLOCKS = 8,
                        parameter PERF_TABLE_H = 16,
                        parameter PERF_TABLE_L = 4,
                        parameter TABLE_REG_WIDTH = 5
)               
(
    input clk,
    input rst,

    input [FEISTEL_WIDTH - 1 : 0] data,
    input [KEY_WIDTH - 1 : 0] key,

    output [FEISTEL_WIDTH - 1 : 0] feistel_result
);

    wire [KEY_WIDTH - 1 : 0] expand_data;
    wire [KEY_WIDTH - 1 : 0] x_expand_data;
    wire [BLCOK_WIDTH - 1 : 0] blcok_data [NUM_OF_BLOCKS - 1 : 0];


    reg [TABLE_REG_WIDTH - 1: 0] table_0 [PERF_TABLE_H - 1][PERF_TABLE_L - 1];
    reg [TABLE_REG_WIDTH - 1: 0] table_1 [PERF_TABLE_H - 1][PERF_TABLE_L - 1];
    reg [TABLE_REG_WIDTH - 1: 0] table_2 [PERF_TABLE_H - 1][PERF_TABLE_L - 1];
    reg [TABLE_REG_WIDTH - 1: 0] table_3 [PERF_TABLE_H - 1][PERF_TABLE_L - 1];
    reg [TABLE_REG_WIDTH - 1: 0] table_4 [PERF_TABLE_H - 1][PERF_TABLE_L - 1];
    reg [TABLE_REG_WIDTH - 1: 0] table_5 [PERF_TABLE_H - 1][PERF_TABLE_L - 1];    


    generate  
        assign expand_data[0] = data[31];
        assign expand_data[1] = data[1];
        assign expand_data[2] = data[2];
        assign expand_data[3] = data[3];
        assign expand_data[4] = data[4];
        assign expand_data[5] = data[5];
        assign expand_data[6] = data[4];
        assign expand_data[7] = data[5];
        assign expand_data[8] = data[6];
        assign expand_data[9] = data[7];
        assign expand_data[10] = data[8];
        assign expand_data[11] = data[9];
        assign expand_data[12] = data[8];
        assign expand_data[13] = data[9];
        assign expand_data[14] = data[10];
        assign expand_data[15] = data[11];
        assign expand_data[16] = data[12];
        assign expand_data[17] = data[13];
        assign expand_data[18] = data[12];
        assign expand_data[19] = data[13];
        assign expand_data[20] = data[14];
        assign expand_data[21] = data[15];
        assign expand_data[22] = data[16];
        assign expand_data[23] = data[17];
        assign expand_data[24] = data[16];
        assign expand_data[25] = data[17];
        assign expand_data[26] = data[18];
        assign expand_data[27] = data[19];
        assign expand_data[28] = data[20];
        assign expand_data[29] = data[21];
        assign expand_data[30] = data[20];
        assign expand_data[31] = data[21];
        assign expand_data[32] = data[22];
        assign expand_data[33] = data[23];
        assign expand_data[34] = data[24];
        assign expand_data[35] = data[25];
        assign expand_data[36] = data[24];
        assign expand_data[37] = data[25];
        assign expand_data[38] = data[26];
        assign expand_data[39] = data[27];
        assign expand_data[40] = data[28];
        assign expand_data[41] = data[29];
        assign expand_data[42] = data[28];
        assign expand_data[43] = data[29];
        assign expand_data[44] = data[30];
        assign expand_data[45] = data[31];
        assign expand_data[46] = data[32];
        assign expand_data[47] = data[1];   

        assign x_expand_data = data ^ expand_data;

        assign blcok_data[0] = x_expand_data[5 : 0];
        assign blcok_data[1] = x_expand_data[11 : 6];
        assign blcok_data[2] = x_expand_data[17 : 12];
        assign blcok_data[3] = x_expand_data[23 : 18];
        assign blcok_data[4] = x_expand_data[29 : 24];
        assign blcok_data[5] = x_expand_data[35 : 30];
        assign blcok_data[6] = x_expand_data[41 : 36];
        assign blcok_data[7] = x_expand_data[47 : 42];
        


    endgenerate





endmodule