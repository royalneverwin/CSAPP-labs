/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2018 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* We do not support C11 <threads.h>.  */
/* 
 * minusOne - return a value of -1 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int minusOne(void) {
  int var1 = 0;
  return ~var1;
}
/* 
 * implication - return x -> y in propositional logic - 0 for false, 1
 * for true
 *   Example: implication(1,1) = 1
 *            implication(1,0) = 0
 *   Legal ops: ! ~ ^ |
 *   Max ops: 5
 *   Rating: 2
 */
int implication(int x, int y) {
  return y|(x^1);
}
/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2 
 */
int leastBitPos(int x) {
  int val1 = ~x;
  val1 = val1 + 1;
  return x&val1;
}
/* 
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateLeft(0x87654321,4) = 0x76543218
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateLeft(int x, int n) {
  int val1 = ~n;
  int val2 = 1;
  int val3 = x;
  int val4 = x;
  val1 = val1 + 32;
  val2 = val2 << 31;
  val2 = val2 >> val1; 
  val2 = ~val2;
  val1 = val1 + 1;
  val3 = val3 >> val1;
  val3 = val3 & val2;
  val4 = val4 << n;
  return val4 + val3;
}
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  int val1 = !x;
  int val2 = val1 << 31;
  int val3 = !val1;
  val3 = val3 << 31;
  val3 = val3 >> 31;
  val2 = val2 >> 31;
  return (y & val3) + (z & val2);
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  int val1 = ~x + 1;
  int val2 = val1 | x;
  val2 = val2 >> 31;
  return val2 + 1;
}
/* 
 * oneMoreThan - return 1 if y is one more than x, and 0 otherwise
 *   Examples oneMoreThan(0, 1) = 1, oneMoreThan(-1, 1) = 0
 *   Legal ops: ~ & ! ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int oneMoreThan(int x, int y) {
  int val1 = x + 1;
  int val2 = val1 ^ y;
  int val3 = ~val2 + 1;
  int val4 = val2 & val3;
  int val5 = val3 ^ val2;
  int val6 = x ^ y;
  val6  = val6 >> 31;
  val6 = ~val6;
  val5 = val5 + val4;
  val5 = val5 >> 31;
  return (val5 + 1) & (val6 |( x >> 31));
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  int val1 = 33 + ~n;
  int val2 = x << val1;
  val2 = val2 >> val1;
  return !(x^val2);
}
/*
 * multFiveEighths - multiplies by 5/8 rounding toward 0.
 *   Should exactly duplicate effect of C expression (x*5/8),
 *   including overflow behavior.
 *   Examples: multFiveEighths(77) = 48
 *             multFiveEighths(-22) = -13
 *             multFiveEighths(1073741824) = 13421728 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int multFiveEighths(int x) {
  int val1 = x << 2;
  int val2;
  val1 = val1 + x;
  val2 = val1 >> 31;
  val2 = val2 & 7;
  return (val1 + val2) >> 3;
}
/*
 * satMul2 - multiplies by 2, saturating to Tmin or Tmax if overflow
 *   Examples: satMul2(0x30000000) = 0x60000000
 *             satMul2(0x40000000) = 0x7FFFFFFF (saturate to TMax)
 *             satMul2(0x90000000) = 0x80000000 (saturate to TMin)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int satMul2(int x) {
  int val1 = x >> 31;
  int val2 = (x << 1) >> 31;
  int val3 = val1 ^ val2;
  int val4 = x << 1;//Normal
  int val5 = 1;
  int val6;
  val5 = val5 << 31;//TMin
  val6 = val5 >> 31;
  val6 = val6 ^ val5;//TMax
  return (val4 & (~val3)) | (val3 & val5 & val1) | (val3 & val6 & val2);
}
/*
 * modThree - calculate x mod 3 without using %.
 *   Example: modThree(12) = 0,
 *            modThree(2147483647) = 1,
 *            modThree(-8) = -2,
 *   Legal ops: ~ ! | ^ & << >> +
 *   Max ops: 60
 *   Rating: 4
 */
int modThree(int x) {
    int judge1 = x >> 31;
    int judge2 = x << 1;
    int judge3 = (0xff<<8) + 0xff;
    int judge4 = 0xff;
    int judge5 = 0xf;
    int judge6 = 0x3;
    int usingresult1 = !(~(judge1&(~judge2)));
    int result1 = 2;
    int result2;
    int val;
    usingresult1 = (usingresult1<<1)+usingresult1;
    val = (x &(~judge1)) + ((~x+1)&judge1);
    val = (val&judge3) + (val >> 16);
    val = (val&judge3) + (val >> 16);
    val = (val&judge4) + (val >> 8);
    val = (val&judge4) + (val >> 8);
    val = (val&judge5) + (val >> 4);
    val = (val&judge5) + (val >> 4);
    val = (val&judge6) + (val >> 2);
    val = (val&judge6) + (val >> 2);
    result2 = (!(val^1)) + ((!(val^2))<<1);
    result2 = ((~result2+1)&(judge1)) + (result2&(~judge1));
    return (~(usingresult1&result1)+1) + ((((!usingresult1)<<31)>>31)&result2);
}
/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
  int val = x;
  int val1;
  int sum1;
  int val2;
  int sum2;
  int val3;
  int sum3;
  int val4;
  int sum4;
  int sum5;
  val1 = !!(val >> 16);
  sum1 = val1 << 4;
  val = val >> sum1;
  val2 = !!(val >> 8);
  sum2 = val2 << 3;
  val = val >> sum2;
  val3 = !!(val >> 4);
  sum3 = val3 << 2;
  val = val >> sum3;
  val4 = !!(val >> 2);
  sum4 = val4 << 1;
  val = val >> sum4;
  sum5 = val >> 1;
  return sum1 + sum2 + sum3 + sum4 + sum5;
}
/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
  int judge1 = uf >> 23;
  int judge2 = uf & 0x7FFFFF;
  int judge3;
  int val1 = 0x80000000;
  int val2 = val1 & uf;
  int val3 = uf ^ val2;
  judge1 = judge1 & 0xFF;
  judge3 = !((judge1^0xFF) + (!judge2));
  if(judge3){
    return uf;
  }
  return val3;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  int s = x & 0x80000000;
  int exp = 31;
  unsigned frac;
  unsigned max = 0x80000000;
  unsigned val = x;
  int result;
  int countRound = 0x80000000;
  int dispos2;
  int dispos1;
  int round = 0;
  if(s){
    val = val ^ 0x80000000;
    frac = max - val;
  }
  else{
    frac = val;
  }
  if(!x){
    return x;
  }
  while(((frac >> exp) & 1) != 1){
    exp--;
  }
  dispos1 = exp - 23;
  if(exp > 23){
    countRound = countRound >> (54 - exp);
    countRound = ~countRound;
    countRound = countRound & frac;
    dispos2 = 1 << (exp - 24);
    if(countRound > dispos2){
      round = 1;
    }
    else if((frac&(1<<dispos1)) && (countRound == dispos2)){
      round = 1;
    }
    frac = frac >> dispos1;
  }
  else{
    frac = frac << (23 - exp);
  }
  frac = frac & 0x7fffff;
  exp = exp + 127;
  exp = exp << 23;
  result =  s + exp + frac + round;
  return result;
}
/* 
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf) {
  int exp = uf;
  int s = uf & 0x80000000;
  unsigned frac = uf & 0x7fffff;
  exp >>= 23;
  exp = exp & 0xff;
  exp = exp - 127;
  if(uf == 0xcf000000){
    return 0x80000000;
  }
  if(exp >= 31){
    return 0x80000000u;
  }
  if((exp + 127) == 0 && frac == 0){
    return 0;
  }
  frac += 0x800000;
  if(exp > 23){
    frac <<= (exp - 23);
  }
  else if(exp >= 0){
    frac >>= (23-exp);
  }
  else{
    return 0;
  }
  if(s){
    frac = 0x80000000 - frac;
  }
  return s + frac;
}
/* 
 * float_negpwr2 - Return bit-level equivalent of the expression 2.0^-x
 *   (2.0 raised to the power -x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^-x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 30 
 *   Rating: 4
 */
unsigned float_negpwr2(int x) {
  int exp;
  if(x < -127){
    return 0x7f800000;
  }
  else if(x <= 126){
    exp = -x;
    exp = exp + 127;
    exp = exp << 23;
    return exp;
  }
  else if(x <= 149){
    exp = -x;
    return 1 << (exp + 149);   
  }
  else{
    return 0;
  }
}
