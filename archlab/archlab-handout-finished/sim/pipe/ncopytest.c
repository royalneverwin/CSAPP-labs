#include <stdio.h>

typedef word_t word_t;

word_t src[8], dst[8];

/* $begin ncopy */
/*
 * ncopy - copy src to dst, returning number of positive ints
 * contained in src array.
 */
word_t ncopy(word_t *src, word_t *dst, word_t len)
{
    word_t count = 0;
    word_t val1, val2;

    while (len > 1) {
	val1 = *src++;
	val2 = *(src+len-2);
	*dst++ = val1;
	*(dst+len-2) = val2;
	if (val1 > 0)
	    count++;
	if (val2 > 0)
	    count++;
	len -= 2;
    }
    if(len == 1)
	*dst = *src;
    return count;
}
/* $end ncopy */

int main()
{
    word_t i, count;

    for (i=0; i<8; i++)
	src[i]= i+1;
    count = ncopy(src, dst, 8);
    printf ("count=%d\n", count);
    exit(0);
}


