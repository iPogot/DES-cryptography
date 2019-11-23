//Module for first DES transposition 
//
//18.11.2019

module  des_init_transp  #(parameter CIPHER_WIDTH = 64
)
(
	input wire [CIPHER_WIDTH - 1 : 0] in_data,

	output wire [CIPHER_WIDTH - 1 : 0] transp_data
);
	//row assign_array 

	assign transp_data[0] = in_data[57];
	assign transp_data[1] = in_data[49];
	assign transp_data[2] = in_data[41];
	assign transp_data[3] = in_data[33];
	assign transp_data[4] = in_data[25];
	assign transp_data[5] = in_data[17];
	assign transp_data[6] = in_data[9];
	assign transp_data[7] = in_data[1];
	assign transp_data[8] = in_data[59];
	assign transp_data[9] = in_data[51];
	assign transp_data[10] = in_data[43];
	assign transp_data[11] = in_data[35];
	assign transp_data[12] = in_data[27];
	assign transp_data[13] = in_data[19];
	assign transp_data[14] = in_data[11];
	assign transp_data[15] = in_data[3];
	assign transp_data[16] = in_data[61];
	assign transp_data[17] = in_data[53];
	assign transp_data[18] = in_data[45];
	assign transp_data[19] = in_data[37];
	assign transp_data[20] = in_data[29];
	assign transp_data[21] = in_data[21];
	assign transp_data[22] = in_data[13];
	assign transp_data[23] = in_data[5];
	assign transp_data[24] = in_data[63];
	assign transp_data[25] = in_data[55];
	assign transp_data[26] = in_data[47];
	assign transp_data[27] = in_data[39];
	assign transp_data[28] = in_data[31];
	assign transp_data[29] = in_data[23];
	assign transp_data[30] = in_data[15];
	assign transp_data[31] = in_data[7];
	assign transp_data[32] = in_data[56];
	assign transp_data[33] = in_data[48];
	assign transp_data[34] = in_data[40];
	assign transp_data[35] = in_data[32];
	assign transp_data[36] = in_data[24];
	assign transp_data[37] = in_data[16];
	assign transp_data[38] = in_data[8];
	assign transp_data[39] = in_data[0];
	assign transp_data[40] = in_data[58];
	assign transp_data[41] = in_data[50];
	assign transp_data[42] = in_data[42];
	assign transp_data[43] = in_data[34];
	assign transp_data[44] = in_data[26];
	assign transp_data[45] = in_data[18];
	assign transp_data[46] = in_data[10];
	assign transp_data[47] = in_data[2];
	assign transp_data[48] = in_data[60];
	assign transp_data[49] = in_data[52];
	assign transp_data[50] = in_data[44];
	assign transp_data[51] = in_data[36];
	assign transp_data[52] = in_data[28];
	assign transp_data[53] = in_data[20];
	assign transp_data[54] = in_data[12];
	assign transp_data[55] = in_data[4];
	assign transp_data[56] = in_data[62];
	assign transp_data[57] = in_data[54];
	assign transp_data[58] = in_data[46];
	assign transp_data[59] = in_data[38];
	assign transp_data[60] = in_data[30];
	assign transp_data[61] = in_data[22];
	assign transp_data[62] = in_data[14];
	assign transp_data[63] = in_data[6];
	

endmodule 