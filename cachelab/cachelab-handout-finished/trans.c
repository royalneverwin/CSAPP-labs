/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */


 /*
 王新昊
 1900011102
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";


void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    int i, j, x, y;   
    int x0, x1, x2, x3, x4, x5,x6, x7;
    /*先分类*/
    if(M == 32){
/*整体思想是block思想，将32x32的矩阵分为16个8x8的小矩阵进行转置，
但对位于对角线的矩阵进行特殊处理，尽可能减少miss的概率*/

/*对位于对角线的矩阵特殊处理的方法：因为从A读数据和把数
据写到B都是对同一个块进行处理，对A处理时从内存中读入A的
块，对B处理时从内存中读入B的块，因此如果按照正常的处理
会产生很多次冲突不命中。我考虑的策略是每次读A的块时将该
块8个元素都存到临时变量中，然后再对B写，避免每次只读A一
个元素导致每次读都miss的情况。但这样仍然会有一个小问题
，比如读完A的第一行后对B的每一行第一个进行写，那么再读A的
第二行后会把cache中存B的第二行的块覆盖掉，导致读完A的第二
行后对B的每一行第二个进行写时对B第二行第二个的写会miss；
我的处理方法是等A读完第i行后再写B的第i行，防止被覆盖。可以
将之前从A读的但未写到B中的元素存到B中还未写的位置，避免过
多临时变量的使用。具体代码如下：*/
        for(i = 0; i < N; i+=8){//分块
            for(j = 0; j < M; j+=8){//分块
                if(i == j){//对位于对角线的矩阵特殊处理
                    x = i;
                    y = j;
                    /*用8个临时变量存放一个块中的A的8个元素值*/
                    /*读取A的第1行*/
                    x0=A[x][y];x1=A[x][y+1];x2=A[x][y+2];x3=A[x][y+3];
					x4=A[x][y+4];x5=A[x][y+5];x6=A[x][y+6];x7=A[x][y+7];
                    /*因为只读了A的第一行，所以目前只能写B的第一行,
                    有效的写入只有B[y][x]==B[x][y]，其他写入还要等继续读A的下面行，
                    因此剩余的B位置可以用来存放已经从A读取但未写入B的值.
                    下面也可以以此类推*/
                    B[x][y]=x0;B[x][y+1]=x1;B[x][y+2]=x2;B[x][y+3]=x3;
					B[x][y+4]=x4;B[x][y+5]=x5;B[x][y+6]=x6;B[x][y+7]=x7;
                    /*读取A的第2行*/
                    x0 = A[x+1][y];x1 = A[x+1][y+1];x2 = A[x+1][y+2];x3 = A[x+1][y+3];
                    x4 = A[x+1][y+4];x5 = A[x+1][y+5];x6 = A[x+1][y+6];x7 = A[x+1][y+7];
                    /*B的第2行也可以写入了*/
                    B[x+1][y] = B[x][y+1];B[x][y+1] = x0;
                    B[x+1][y+1] = x1;B[x+1][y+2] = x2;B[x+1][y+3] = x3;
                    B[x+1][y+4] = x4;B[x+1][y+5] = x5;B[x+1][y+6] = x6;B[x+1][y+7] = x7;
                    /*读取A的第3行*/
                    x0 = A[x+2][y];x1 = A[x+2][y+1];x2 = A[x+2][y+2];x3 = A[x+2][y+3];
                    x4 = A[x+2][y+4];x5 = A[x+2][y+5];x6 = A[x+2][y+6];x7 = A[x+2][y+7];
                    /*B的第3行也可以写入了*/
                    B[x+2][y] = B[x][y+2];B[x][y+2] = x0;
                    B[x+2][y+1] = B[x+1][y+2];B[x+1][y+2] = x1;
                    B[x+2][y+2] = x2;B[x+2][y+3] = x3;
                    B[x+2][y+4] = x4;B[x+2][y+5] = x5;B[x+2][y+6] = x6;B[x+2][y+7] = x7;
                    /*读取A的第4行*/
                    x0 = A[x+3][y];x1 = A[x+3][y+1];x2 = A[x+3][y+2];x3 = A[x+3][y+3];
                    x4 = A[x+3][y+4];x5 = A[x+3][y+5];x6 = A[x+3][y+6];x7 = A[x+3][y+7];
                    /*B的第4行也可以写入了*/
                    B[x+3][y] = B[x][y+3];B[x][y+3] = x0;
                    B[x+3][y+1] = B[x+1][y+3];B[x+1][y+3] = x1;
                    B[x+3][y+2] = B[x+2][y+3];B[x+2][y+3] = x2;
                    B[x+3][y+3] = x3;
                    B[x+3][y+4] = x4;B[x+3][y+5] = x5;B[x+3][y+6] = x6;B[x+3][y+7] = x7;
                    /*读取A的第5行*/
                    x0 = A[x+4][y];x1 = A[x+4][y+1];x2 = A[x+4][y+2];x3 = A[x+4][y+3];
                    x4 = A[x+4][y+4];x5 = A[x+4][y+5];x6 = A[x+4][y+6];x7 = A[x+4][y+7];
                    /*B的第5行也可以写入了*/
                    B[x+4][y] = B[x][y+4];B[x][y+4] = x0;
                    B[x+4][y+1] = B[x+1][y+4];B[x+1][y+4] = x1;
                    B[x+4][y+2] = B[x+2][y+4];B[x+2][y+4] = x2;
                    B[x+4][y+3] = B[x+3][y+4];B[x+3][y+4] = x3;
                    B[x+4][y+4] = x4;B[x+4][y+5] = x5;B[x+4][y+6] = x6;B[x+4][y+7] = x7;
                    /*读取A的第6行*/
                    x0 = A[x+5][y];x1 = A[x+5][y+1];x2 = A[x+5][y+2];x3 = A[x+5][y+3];
                    x4 = A[x+5][y+4];x5 = A[x+5][y+5];x6 = A[x+5][y+6];x7 = A[x+5][y+7];
                    /*B的第6行也可以写入了*/
                    B[x+5][y] = B[x][y+5];B[x][y+5] = x0;
                    B[x+5][y+1] = B[x+1][y+5];B[x+1][y+5] = x1;
                    B[x+5][y+2] = B[x+2][y+5];B[x+2][y+5] = x2;
                    B[x+5][y+3] = B[x+3][y+5];B[x+3][y+5] = x3;
                    B[x+5][y+4] = B[x+4][y+5];B[x+4][y+5] = x4;
                    B[x+5][y+5] = x5;B[x+5][y+6] = x6;B[x+5][y+7] = x7;
                    /*读取A的第7行*/
                    x0 = A[x+6][y];x1 = A[x+6][y+1];x2 = A[x+6][y+2];x3 = A[x+6][y+3];
                    x4 = A[x+6][y+4];x5 = A[x+6][y+5];x6 = A[x+6][y+6];x7 = A[x+6][y+7];
                    /*B的第7行也可以写入了*/
                    B[x+6][y] = B[x][y+6];B[x][y+6] = x0;
                    B[x+6][y+1] = B[x+1][y+6];B[x+1][y+6] = x1;
                    B[x+6][y+2] = B[x+2][y+6];B[x+2][y+6] = x2;
                    B[x+6][y+3] = B[x+3][y+6];B[x+3][y+6] = x3;
                    B[x+6][y+4] = B[x+4][y+6];B[x+4][y+6] = x4;
                    B[x+6][y+5] = B[x+5][y+6];B[x+5][y+6] = x5;
                    B[x+6][y+6] = x6;B[x+6][y+7] = x7;
                    /*读取A的第8行*/
                    x0 = A[x+7][y];x1 = A[x+7][y+1];x2 = A[x+7][y+2];x3 = A[x+7][y+3];
                    x4 = A[x+7][y+4];x5 = A[x+7][y+5];x6 = A[x+7][y+6];x7 = A[x+7][y+7];
                    /*B的第8行也可以写入了*/
                    B[x+7][y] = B[x][y+7];B[x][y+7] = x0;
                    B[x+7][y+1] = B[x+1][y+7];B[x+1][y+7] = x1;
                    B[x+7][y+2] = B[x+2][y+7];B[x+2][y+7] = x2;
                    B[x+7][y+3] = B[x+3][y+7];B[x+3][y+7] = x3;
                    B[x+7][y+4] = B[x+4][y+7];B[x+4][y+7] = x4;
                    B[x+7][y+5] = B[x+5][y+7];B[x+5][y+7] = x5;
                    B[x+7][y+6] = B[x+6][y+7];B[x+6][y+7] = x6;
                    B[x+7][y+7] = x7;
                }
                else{//不位于对角线的矩阵特殊正常处理
                    for(x = i; x < i+8; x++){
                        for(y = j; y < j+8; y++){
                            B[y][x] = A[x][y];
                        }
                    }
                }
            }
        }
    }
    else if(M == 64){
/*和32x32位矩阵类似,也是分块处理,依然是分8x8块;
但考虑到cache的大小，为了尽量减少miss，对每个8x8块再分成4个4x4块分别进行不同处理*/
        for(i = 0; i < N; i+=8){//分块
            for(j = 0; j < M; j+=8){//分块
                /*A的8x8矩阵左上方的4x4矩阵，可以正常转置；8x8右上方的矩阵，先存放到B的对应8x8矩阵的右上方矩阵中*/
                for(x = i; x < i+4; x++){
                    x0 = A[x][j];x1 = A[x][j+1];x2 = A[x][j+2];x3 = A[x][j+3];
                    x4 = A[x][j+4];x5 = A[x][j+5];x6 = A[x][j+6];x7 = A[x][j+7];
                    B[j][x] = x0;B[j+1][x] = x1;B[j+2][x] = x2;B[j+3][x] = x3;
                    B[j][x+4] = x4;B[j+1][x+4] = x5;B[j+2][x+4] = x6;B[j+3][x+4] = x7;
                }
                /*对A的8x8矩阵左下方的4x4矩阵，注意改成每次访问一个列，miss数不会变，
                但此时对B中对应的8x8矩阵的右上方矩阵的访问就可以访问一行进行修改，
                每次访问完一行后将该行所在的块eviction，换成B中8x8矩阵左下方的矩阵的对应行所在块，
                之后被eviction的块不会再被访问，减少了miss数*/
                for(y = j; y < j+4; y++){
                    x0 = A[i+4][y];x1 = A[i+5][y];x2 = A[i+6][y];x3 = A[i+7][y];
                    x4 = B[y][i+4];x5 = B[y][i+5];x6 = B[y][i+6];x7 = B[y][i+7];
                    B[y][i+4] = x0;B[y][i+5] = x1;B[y][i+6] = x2;B[y][i+7] = x3;
                    B[y+4][i] = x4;B[y+4][i+1] = x5;B[y+4][i+2] = x6;B[y+4][i+3] = x7;
                }
                /*A的8x8矩阵右下方的4x4矩阵，可以正常转置*/
                for(x = i+4; x < i+8; x++){
                    x0 = A[x][j+4];x1 = A[x][j+5];x2 = A[x][j+6];x3 = A[x][j+7];
                    B[j+4][x] = x0;B[j+5][x] = x1;B[j+6][x] = x2;B[j+7][x] = x3;
                }
            }
        }
    }
    /*第三种没有什么很好的方法，思路是不断试验分块种类，下面将结果展示：
    4x4：1832，8x8:1760，10x10:1969，11x11:2042，12x12:1740，
    13x13:1973，14x14:1885，15x15:1941，16x16:1870，17x17:2203，
    18x18:2258，19x19:2479，20x20:2413，21x21:2550，22x22:2491，
    23x23:2552，24x24:2531，25x25:2749，24x8:1657，8x24:2680，
    16x4:1630，24x4:1590，满足要求。*/
    else{
        for(i = 0; i < N; i += 24){
            for(j = 0; j < M; j+= 4){
                for(x = i; x < N && x < i+24; x++){//注意要加一项判断：x < N,因为N不一定是24倍数
                    for(y = j; y < M && y < j+4; y++){//注意要加一项判断：y < M,因为M不一定是4倍数
                        B[y][x] = A[x][y];
                    }
                }
            }
        }   
    }
    ENSURES(is_transpose(M, N, A, B));
}


/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    // registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

