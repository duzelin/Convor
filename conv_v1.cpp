#include "conv_v1.hpp"
#include <iostream>

int _chin_, _chout_, _r_, _c_, _rin_, _cin_, _k_, _s_, _p_, _rinp_, _cinp_;

int In_buffer_start;
int In_buffer_end;
int In_buffer_length;
int W_buffer_start;
int W_buffer_end;
int Out_buffer_start;
int Out_buffer_end;

int In_buf_row = 0;
int In_buf_row_count = 0;
int Out_buf_row = 0;
int Out_buf_row_count = 0;
int Out_buf_cho = 0;
int Out_buf_cho_count = 0;

void Write_O(DATATYPE *out_buffer_ddr, DATATYPE O_temp){
#pragma HLS INLINE off
	*(out_buffer_ddr) = O_temp;
}

DATATYPE Read_IW(DATATYPE *in_buffer_ddr){
#pragma HLS INLINE off
	return *in_buffer_ddr;
}

void Load_In_ALL(int row, DATATYPE *In_buf, hls::stream<DATATYPE> In_next[M][N+1]){
	Load_In_Out:for(int col=0; col<_c_; col++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
        for(int chi=0; chi<_chin_; chi++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
            for(int kr=0; kr<_k_; kr++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
            	Inner:for(int kc=0; kc<_k_; kc++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
                	for(int r=0; r<M; r++){
                		int r_in = (r + row) * _s_ + kr;
                		int c_in = col*_s_+kc;
                		In_next[r][0] << *(In_buf + (In_buffer_start + r_in*_cin_*_chin_ + c_in*_chin_ + chi) % In_buffer_length);
                	}
                    //In_next << *(In_buf + (In_buffer_start + r_in*_cin_*_chin_ + c_in*_chin_ + chi) % In_buffer_length);
                    //In_next << Read_IW(In_buf + (In_buffer_start + r_in*_cin_*_chin_ + c_in*_chin_ + chi) % In_buffer_length);
                }
            }
        }
    }
}

void Load_In(int r, DATATYPE *In_buf, hls::stream<DATATYPE> &In_next){
	Load_In_Out:for(int col=0; col<_c_; col++){
        for(int chi=0; chi<_chin_; chi++){
            for(int kr=0; kr<_k_; kr++){
                Inner:for(int kc=0; kc<_k_; kc++){
                    int r_in = r * _s_ + kr;
                    int c_in = col*_s_+kc;
                    //In_next << *(In_buf + (In_buffer_start + r_in*_cin_*_chin_ + c_in*_chin_ + chi) % In_buffer_length);
                    In_next << Read_IW(In_buf + (In_buffer_start + r_in*_cin_*_chin_ + c_in*_chin_ + chi) % In_buffer_length);
                }
            }
        }
    }
}

void Load_W_ALL(int cho, DATATYPE *W_buf, hls::stream<DATATYPE> W_next[M+1][N]){
    Load_W_Out:for(int col=0; col<_c_; col++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
    	for(int chi=0; chi<_chin_; chi++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
    		for(int kr=0; kr<_k_; kr++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
    			Inner:for(int kc=0; kc<_k_; kc++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
    				for(int o=0; o<N; o++){
    					W_next[0][o] << *(W_buf + (cho + o) *_chin_*_k_*_k_ + chi*_k_*_k_ + kr*_k_ + kc);
    				}
    				//W_next << *(W_buf + cho*_chin_*_k_*_k_ + chi*_k_*_k_ + kr*_k_ + kc);
    				//W_next << Read_IW(W_buf + cho*_chin_*_k_*_k_ + chi*_k_*_k_ + kr*_k_ + kc);
    			}
    		}
    	}
    }
}

void Load_W(int cho, DATATYPE *W_buf, hls::stream<DATATYPE> &W_next){
    Load_W_Out:for(int col=0; col<_c_; col++){
    	for(int chi=0; chi<_chin_; chi++){
    		for(int kr=0; kr<_k_; kr++){
    			for(int kc=0; kc<_k_; kc++){
    				//W_next << *(W_buf + cho*_chin_*_k_*_k_ + chi*_k_*_k_ + kr*_k_ + kc);
    				W_next << Read_IW(W_buf + cho*_chin_*_k_*_k_ + chi*_k_*_k_ + kr*_k_ + kc);
    			}
    		}
    	}
    }
}

void Write_O_ALL(DATATYPE *Out_buf, hls::stream<DATATYPE> O[M][N], int cho){
	DATATYPE O_temp;
	for(int col=0; col<_c_; col++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
		Inner:for(int i=0; i<M; i++){
			for(int j=0; j<N; j++){
				O[i][j] >> O_temp;
				*(Out_buf + i * _c_ * _chout_ + (col - Out_buf_cho) * _chout_ + cho + j) = O_temp;
			}
		}
	}
}

void PE(hls::stream<DATATYPE> &W_pre, hls::stream<DATATYPE> &In_pre, hls::stream<DATATYPE> &W_next, hls::stream<DATATYPE> &In_next, int row, int cho, hls::stream<DATATYPE> O[M][N], int m, int n){
    DATATYPE W;
    DATATYPE In;
    DATATYPE O_temp;

    for(int col=0; col<_c_; col++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
    	O_temp = 0;
        for(int chi=0; chi<_chin_; chi++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
            for(int kr=0; kr<_k_; kr++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
                Inner:for(int kc=0; kc<_k_; kc++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
                	W_pre >> W;
                    In_pre >> In;
                    if(row < _r_ && cho < _chout_){
                    	O_temp += In * W;

                    }
                    In_next << In;
                    W_next << W;
                }
            }
        }
        O[m][n] << O_temp;
        //*(Out_buf + (row - Out_buf_row) * _c_ * _chout_ + (col - Out_buf_cho) * _chout_ + cho) = O_temp;
        //Write_O(Out_buf + (row - Out_buf_row) * _c_ * _chout_ + (col - Out_buf_cho) * _chout_ + cho, O_temp);
    }
}

void Drain_In(hls::stream<DATATYPE> &In_pre){
    DATATYPE In;
    Drain_In_Out:for(int col=0; col<_c_; col++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
        for(int chi=0; chi<_chin_; chi++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
            for(int kr=0; kr<_k_; kr++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
                Inner:for(int kc=0; kc<_k_; kc++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
                   In_pre >> In;
                }
            }
        }
    }
}

void Drain_W(hls::stream<DATATYPE> &W_next){
    DATATYPE W;
    Drain_W_Out:for(int col=0; col<_c_; col++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
    	for(int chi=0; chi<_chin_; chi++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
    		for(int kr=0; kr<_k_; kr++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
    			Inner:for(int kc=0; kc<_k_; kc++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
                W_next >> W;
    			}
    		}
    	}
    }
}

void PE_array(DATATYPE *In_buf, DATATYPE *W_buf, DATATYPE *Out_buf, int row, int cho){
#pragma HLS INLINE off

    hls::stream<DATATYPE> In_inter[M][N+1];
#pragma HLS STREAM variable=In_inter
    hls::stream<DATATYPE> W_inter[M+1][N];
#pragma HLS STREAM variable=W_inter
    hls::stream<DATATYPE> O_inter[M][N];
#pragma HLS STREAM variable=O_inter
#pragma HLS DATAFLOW
    /*
    Load_In:for(int m=0; m<M; m++){
#pragma HLS UNROLL
        Load_In(m, In_buf, In_inter[m][0]);
    }
    */
    Load_In_ALL(0, In_buf, In_inter);
    /*
    Load_W:for(int n=0; n<N; n++){
#pragma HLS UNROLL
        Load_W(cho+n, W_buf, W_inter[0][n]);
    }
    */
    Load_W_ALL(cho, W_buf, W_inter);
    Row:for(int m=0; m<M; m++){
#pragma HLS UNROLL
        Col:for(int n=0; n<N; n++){
#pragma HLS UNROLL
            PE(W_inter[m][n], In_inter[m][n], W_inter[m+1][n], In_inter[m][n+1], row+m, cho+n, O_inter, m, n);
        }
    }
    Write_O_ALL(Out_buf, O_inter, cho);
    Drain_In:for(int m=0; m<M; m++){
#pragma HLS UNROLL
        Drain_In(In_inter[m][N]);
    }
    Drain_W:for(int n=0; n<N; n++){
#pragma HLS UNROLL
        Drain_W(W_inter[M][n]);
    }
    return;
}
/*
void Read_In(DATATYPE *In, DATATYPE* In_ddr, int Rin, int Cin, int CHin){

    for(int r=0; r<Rin; r++){
    	for(int c=0; c<Cin; c++){
    		for(int chi=0; chi<CHin; chi++){
    			In[r][c][chi] = *(In_ddr++);
    		}
    	}
    }
}
*/
void Read_In_buf_line(DATATYPE *In_buf, DATATYPE* In_ddr, int row){
	if(row < _p_/2 || row > _rinp_ - (_p_ + 2) / 2){
		for(int i=0; i<_cinp_; i++){
#pragma HLS LOOP_TRIPCOUNT min=10 max=20
			Inner:for(int j = 0; j < _chin_; j++){
#pragma HLS LOOP_TRIPCOUNT min=3 max=10
				*(In_buf + (In_buffer_end + i * _chin_ + j) % In_buffer_length) = 0;
			}
		}
	}else{
		for(int i=0; i<_cinp_; i++){
#pragma HLS LOOP_TRIPCOUNT min=10 max=20
			if(i < _p_/2 || i > _cinp_ - (_p_ + 2) / 2){
				Inner_pad:for(int j = 0; j < _chin_; j++){
#pragma HLS LOOP_TRIPCOUNT min=3 max=10
					*(In_buf + (In_buffer_end + i * _chin_ + j) % In_buffer_length) = 0;
				}
			}else{
				Inner_norm:for(int j = 0; j < _chin_; j++){
#pragma HLS LOOP_TRIPCOUNT min=3 max=10
					*(In_buf + (In_buffer_end + i * _chin_ + j) % In_buffer_length) = *(In_ddr + row * _cinp_ + i * _chin_ + j);
				}
			}
		}
	}
}
/*
void Read_W(DATATYPE W[CHout][CHin][K][K], DATATYPE* W_ddr){
	for(int cho=0; cho<CHout; cho++){
	    for(int chi=0; chi<CHin; chi++){
	    	for(int kr=0; kr<K; kr++){
	    		for(int kc=0; kc<K; kc++){
	    			W[cho][chi][kr][kc] = *(W_ddr++);
	    		}
	    	}
	    }
	}
}
*/

void Read_W_buf(DATATYPE *W, DATATYPE* W_ddr, int length){
	Inner:for(int i=0; i<length; i++){
#pragma HLS LOOP_TRIPCOUNT min=10 max=100
		*(W+i) = *(W_ddr++);
	}
}

/*
void Write_C(DATATYPE Out[R][C][CHout], DATATYPE* Out_ddr){
	for(int r=0; r<R; r++){
	    for(int c=0; c<C; c++){
	    	for(int cho=0; cho<CHout; cho++){
	    		*(Out_ddr++) = Out[r][c][cho];
	    	}
	    }
	}
}
*/

void Write_C_buf(DATATYPE *Out_buf, DATATYPE* Out_ddr, int row){
	for(int r=0; r<row; r++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
	    for(int c=0; c<_c_; c++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
	    	Inner:for(int cho=0; cho<_chout_; cho++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
	    		*(Out_ddr++) = *(Out_buf + r*_c_*_chout_ + c*_chout_ + cho);
	    		//std::cout << *(Out_buf + r*_c_*_chout_ + c*_chout_ + cho) << std::endl;
	    		*(Out_buf + r*_c_*_chout_ + c*_chout_ + cho) = 0;
	    	}
	    }
	}
}

void Systolic_Array_Conv(DATATYPE* In_ddr, DATATYPE* W_ddr, DATATYPE* Out_ddr, int stride, int padding, int Rin, int Cin, int CHin, int R, int C, int CHout, int K){
#pragma HLS INTERFACE s_axilite port=Out_ddr
#pragma HLS INTERFACE s_axilite port=W_ddr
#pragma HLS INTERFACE s_axilite port=In_ddr
#pragma HLS INTERFACE m_axi depth=144 port=W_ddr
#pragma HLS INTERFACE m_axi depth=64 port=Out_ddr
#pragma HLS INTERFACE m_axi depth=64 port=In_ddr

	_chin_ = CHin;
	_chout_ = CHout;
	_r_ = R;
	_c_ = C;
	_rin_ = Rin;
	_cin_ = Cin;
	_k_ = K;
	_s_ = stride;
	_p_ = padding;
	_rinp_ = _rin_ + _p_;
	_cinp_ = _cin_ + _p_;

	DATATYPE In_buffer[In_buffer_Size];
	DATATYPE W_buffer[W_buffer_Size];
	DATATYPE Out_buffer[Out_buffer_Size];


	In_buffer_length = ((M-1)*stride+K)*Cin*CHin;
	In_buffer_start = 0;
	In_buffer_end = 0;

	Read_W_buf(W_buffer, W_ddr, _chout_*_chin_*_k_*_k_);
	In_buf_row_count = (M - 1) * _s_ + _k_;  //In Buffer缓存的行数
	int flush_row_count = _s_ * M;
	int reuse_row_count = 0;
	Row:while(Out_buf_row < _r_){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10

		int new_read_row_count = In_buf_row_count - reuse_row_count;
		Load_Line:for(int i = 0; i < new_read_row_count; i++){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
			Read_In_buf_line(In_buffer, In_ddr, In_buf_row + i);
			In_buffer_end += _cinp_ * _chin_;
		}

		Out_buf_cho = 0;
		Channel:while(Out_buf_cho < _chout_){
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
			PE_array(In_buffer, W_buffer, Out_buffer, Out_buf_row, Out_buf_cho);
			Out_buf_cho += N;
		}

		//TODO: 写回out
		Out_buf_row_count = M < (_r_ - Out_buf_row) ? M : (_r_ - Out_buf_row);
 		Write_C_buf(Out_buffer, Out_ddr, Out_buf_row_count);
		Out_ddr += M * _c_ * _chout_;
		Out_buf_row += Out_buf_row_count; //更新Out_buffer的起始行号
		In_buf_row += flush_row_count; //更新In_buffer的起始行号

		reuse_row_count = (In_buf_row_count - flush_row_count) > 0 ? (In_buf_row_count - flush_row_count) : 0;
		In_buffer_start = In_buffer_end - reuse_row_count * _cinp_ * _chin_;
	}

}
