#ifndef __SYSTOLIC_ARRAY__
#define __SYSTOLIC_ARRAY__

#include "hls_stream.h"

#define M 4                //Output row 并行度
#define N 4                 //Output channel 并行度

#define In_buffer_Size 500
#define W_buffer_Size 500
#define Out_buffer_Size 500

typedef float DATATYPE;



extern int _chin_, _chout_, _r_, _c_, _rin_, _cin_, _k_, _s_, _p_, _rinp_, _cinp_;

extern int In_buffer_start;
extern int In_buffer_end;
extern int In_buffer_length;
extern int W_buffer_start;
extern int W_buffer_end;
extern int Out_buffer_start;
extern int Out_buffer_end;

extern int In_buf_row;
extern int In_buf_row_count;
extern int Out_buf_row;
extern int Out_buf_row_count;
extern int Out_buf_cho;
extern int Out_buf_cho_count;

void Systolic_Array_Conv(DATATYPE* In_ddr, DATATYPE* W_ddr, DATATYPE* Out_ddr, int stride, int padding, int Rin, int Cin, int CHin, int R, int C, int CHout, int K);
#endif
