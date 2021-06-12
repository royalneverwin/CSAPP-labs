/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUGx
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)


/*
 * If NEXT_FIT defined use next fit search, else use first-fit search 
 */
#define NEXT_FITx

/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) 


/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    
#define PUT2(p, val) (*(unsigned int *)(p) = (val) | (*((unsigned int *)(p)) & (unsigned int)0x2))


/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_ALLOC_PREV(p) (GET(p) & 0x2)                    

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

/*boundary*/
#define boundary1 1
#define boundary2 2
#define boundary3 4
#define boundary4 8
#define boundary5 16
#define boundary6 32
#define boundary7 64
#define boundary8 128
#define boundary9 256
#define boundary10 512
#define boundary11 1024
#define boundary12 2048
#define boundary13 4096

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */  
static void *pointer_start;
//static null_listp_Array[14] = {0};
//static null_list_lastp_Array[14] = {0};
#ifdef NEXT_FIT
static char *rover;           /* Next fit rover */
#endif

/* Function prototypes for internal helper routines */
static size_t Judgetype(size_t size);
static void Putin(void *bp);
static void *Delete(void *bp);
static void *extend_heap(size_t words, size_t judge);
static void *place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);


/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) 
{
    dbg_printf("\n\ninit\n\n");
    /* Create the initial empty heap */
    int i;  /*to init listArray*/
    //for(i = 0; i < 14; i++){
    //    null_listp_Array[i] = 0;
    //    null_list_lastp_Array[i] = 0;
    //}
    if ((heap_listp = mem_sbrk((28+4)*WSIZE)) == (void *)-1) 
        return -1;
    for(i = 0; i < 28; i++){//initialze
        PUT(heap_listp + (i*WSIZE), 0);
    }
    pointer_start = heap_listp;
    heap_listp += 28*(WSIZE);
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));     /* Epilogue header */
    heap_listp += (2*WSIZE);                     


    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE, 1) == NULL) 
        return -1;
    return 0;
}

/*
 * malloc
 */
void *malloc(size_t size) 
{
    dbg_printf("\n\nmalloc %lu\n\n", size);
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      
    if (heap_listp == 0){
        mm_init();
    }
    //mm_checkheap(__LINE__);
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE + WSIZE)                                          
        asize = 2*DSIZE;                                        
    else
        asize = DSIZE * ((size + (WSIZE) + (DSIZE-1)) / DSIZE); 
    dbg_printf("Begin Find...\n");
    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) { 
        dbg_printf("Found!\n"); 
        bp = place(bp, asize);
        //mm_checkheap(__LINE__);                  
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    dbg_printf("No fit found!\n");
    extendsize = MAX(asize,CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize/WSIZE, 0)) == NULL)  
        return NULL;      
    bp = place(bp, asize);   
    //mm_checkheap(__LINE__);
    return bp;
} 

/*
 * free
 */
void free(void *bp)
{
    dbg_printf("\n\nfree %lu\n\n", (size_t)bp - (size_t)mem_heap_lo());
    if (bp == 0) 
        return;

    size_t size = GET_SIZE(HDRP(bp));
    if (heap_listp == 0){
        mm_init();
    }
    //mm_checkheap(__LINE__);
    PUT2(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), GET(HDRP(NEXT_BLKP(bp))) & (~0x2));
    dbg_printf("\nfree is successful? %lu\n", GET_ALLOC_PREV(HDRP(NEXT_BLKP(bp))));
    dbg_printf("\nGET_SIZE: %lu, %lu; GET_ALLOC: %lu, %lu\n", GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)), GET_ALLOC(HDRP(bp)), GET_ALLOC(FTRP(bp)));
    coalesce(bp); 
    //mm_checkheap(__LINE__);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *ptr, size_t size)
{
    dbg_printf("\n\nrealloc %lu %lu\n\n", (size_t)ptr, size);
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        mm_free(ptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(ptr == NULL) {
        return mm_malloc(size);
    }
    newptr = mm_malloc(size);
    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);

    /* Free the old block. */
    mm_free(ptr);
    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    dbg_printf("\n\ncalloc %lu %lu\n\n", nmemb, size);
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);
    return newptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
    void *bp;
    bp = heap_listp;
    size_t listtype = 0;
    size_t countFreeBlock1 = 0;/*count by iterating through every block*/
    size_t countFreeBlock2 = 0;/*count by traversing free list*/
    /*Check prologue blocks*/
    if(GET_SIZE(HDRP(bp)) != 8 || GET_SIZE(FTRP(bp)) != 8){
        printf("line %d: Prologue Blocks Error1. get_size = %lu, %lu\n", lineno, GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)));
        exit(0);
    }
    if(GET_ALLOC(HDRP(bp)) != 1 || GET_ALLOC(FTRP(bp)) != 1){
        printf("line %d: Prologue Blocks Error2.\n", lineno);
        exit(0);
    }
    /*Count free blocks by iterating through every block and traversing free list by pointers and see if they match.*/
    dbg_printf("\n\nheap:\n\n");
    for(;GET_SIZE(HDRP(bp)) > 0;bp = NEXT_BLKP(bp)){
        //dbg_printf("bp = %lu, alloc = %lu\n", (size_t)bp-(size_t)mem_heap_lo(), GET_ALLOC(HDRP(bp)));
        /*Check heap boundaries.*/
        if(!in_heap(bp)){
            printf("line %d: Overheap or Epilogue Blocks Error.\n", lineno);
            exit(0);
        }
        /*Check each block’s address alignment.*/
        if(!aligned(bp)){
            printf("line %d: Block’s Address Alignment Error.\n",lineno);
            exit(0);
        }
        /*Check all next/previous pointers are consistent & Check all free list pointers points between mem heap lo() and mem heap high()*/
        if(GET_ALLOC(HDRP(bp)) == 0){
            /*Check each block’s header and footer*/
            if(GET_SIZE(HDRP(bp)) != GET_SIZE(FTRP(bp)) || GET_ALLOC(HDRP(bp)) != GET_ALLOC(FTRP(bp))){
                dbg_printf("\nGET_SIZE: %lu, %lu; GET_ALLOC: %lu, %lu\n", GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)), GET_ALLOC(HDRP(bp)), GET_ALLOC(FTRP(bp)));
                printf("line %d: Block's Header And Footer Error1.\n", lineno);
                exit(0);
            }
            if(bp != heap_listp &&  GET_SIZE(HDRP(bp)) < 16){
                printf("line %d: Block's Header And Footer Error2.\n", lineno);
                exit(0);
            }
            /*Check coalescing: no two consecutive free blocks in the heap*/
            if(GET_ALLOC(HDRP(bp)) == 0 && (GET_ALLOC_PREV(HDRP(bp)) == 0 || GET_ALLOC(HDRP(NEXT_BLKP(bp))) == 0)){
                printf("line %d: Coalescing Error. %lu %lu %lu\n", lineno, GET_ALLOC_PREV(HDRP(bp)), GET_ALLOC(HDRP(bp)), GET_ALLOC(HDRP(NEXT_BLKP(bp))));
                exit(0);
            }
            countFreeBlock1++;
            void *tmpbp1;
            void *tmpbp2;
            tmpbp1 = GET(bp);
            tmpbp2 = GET(bp + (WSIZE));
            dbg_printf("bp = %lu, prev = %lu. next = %lu\n", (size_t)bp - (size_t)mem_heap_lo(), (size_t)tmpbp1, (size_t)tmpbp2);
            if(tmpbp1 != NULL){
                tmpbp1 += (size_t)mem_heap_lo();
                if(tmpbp1 >= mem_heap_hi() || tmpbp1 <= mem_heap_lo()){
                    printf("line %d: Pointer consistence Error1.\n", lineno);
                    exit(0);
                }
                if(GET_ALLOC(HDRP(tmpbp1)) == 1){
                    printf("line %d: Pointer consistence Error2.\n", lineno);
                    exit(0);
                }
                tmpbp1 = GET(tmpbp1 + (WSIZE));
                if(tmpbp1 == NULL){
                    printf("line %d: Pointer consistence Error3.\n", lineno);
                    exit(0);
                }
                else{
                    tmpbp1 += (size_t)mem_heap_lo();
                    if(tmpbp1 != bp){
                        printf("line %d: Pointer consistence Error4.\n", lineno);
                        exit(0);
                    }
                }
            }
            if(tmpbp2 != NULL){
                tmpbp2 += (size_t)mem_heap_lo();
                if(tmpbp2 > mem_heap_hi() || tmpbp2 < mem_heap_lo()){
                    printf("line %d: Pointer consistence Error5 %lu, prev: %lu, next: %lu, high = %lu, lo = %lu.\n", lineno, (size_t)bp - (size_t)mem_heap_lo(), GET(bp), GET(bp + WSIZE), (size_t)mem_heap_hi(), (size_t)mem_heap_lo());
                    exit(0);
                }
                if(GET_ALLOC(HDRP(tmpbp2)) == 1){
                    printf("line %d: Pointer consistence Error6.\n", lineno);
                    exit(0);
                }
                tmpbp2 = GET(tmpbp2);
                if(tmpbp2 == NULL){
                    printf("line %d: Pointer consistence Error7.\n", lineno);
                    exit(0);
                }
                else{
                    tmpbp2 += (size_t)mem_heap_lo();
                    if(tmpbp2 != bp){
                        dbg_printf("tmpbp2 = %lu\n", (size_t)tmpbp2 - (size_t)mem_heap_lo());
                        printf("line %d: Pointer consistence Error8 %lu, prev: %lu, next: %lu.\n", lineno, (size_t)bp - (size_t)mem_heap_lo(), GET(bp), GET(bp + WSIZE));
                        exit(0);
                    }
                }
            }
        }
    }
    /*Check epilogue blocks*/
    if(GET_ALLOC(HDRP(bp)) != 1){
        printf("%d: Epilogue Blocks Error.", lineno);
        exit(0);
    }
    /*Check if all blocks in each list bucket fall within bucket size range*/
    for(listtype = 0; listtype < 14; listtype++){
        bp = GET(pointer_start + listtype*WSIZE);
        while(bp != GET(pointer_start + (14+listtype)*WSIZE) && bp != NULL){
            countFreeBlock2++;
            bp  = GET(bp + (size_t)mem_heap_lo() + (WSIZE));
        }
        if(bp != GET(pointer_start + (14+listtype)*WSIZE)){
            printf("line %d: Free Block Chain %lu Error.\n", lineno, listtype);
            exit(0);
        }
        if(bp != NULL){
            countFreeBlock2++;
        }
    }
    if(countFreeBlock2 != countFreeBlock1){
        printf("line %d:Free Block Error. countFreeBlock1 = %lu, countFreeBlock2 = %lu\n", lineno, countFreeBlock1, countFreeBlock2);
        exit(0);
    }
}


/* 
 * The remaining routines are internal helper routines 
 */


/*
 *Judgetype - judge which free block chain bp should be stored
 */
static size_t Judgetype(size_t size){
    if(size == 1){
        return 0;
    }
    else if(size == 2){
        return 1;
    }
    else if(size > 2 && size <= 4){
        return 2;
    }
    else if(size > 4 && size <= 8){
        return 3;
    }
    else if(size > 8 && size <= 16){
        return 4;
    }
    else if(size > 16 && size <= 32){
        return 5;
    }
    else if(size > 32 && size <= 64){
        return 6;
    }
    else if(size > 64 && size <= 128){
        return 7;
    }
    else if(size > 128 && size <= 256){
        return 8;
    }
    else if(size > 256 && size <= 512){
        return 9;
    }
    else if(size > 512 && size <= 1024){
        return 10;
    }
    else if(size > 1024 && size <= 2048){
        return 11;
    }
    else if(size > 2048 && size <= 4096){
        return 12;
    }
    else if(size > 4096){
        return 13;
    }
}


/* 
 * Putin - Put bp into free block chain that it fits
 */
static void Putin(void *bp){
    void *next_blockp = 0;/*find bp's next free block point*/
    void *prev_blockp = 0;/*find bp's prev free block point*/
    void *cur_null_listp;
    void *cur_null_list_lastp;
    size_t listtype = Judgetype(GET_SIZE(HDRP(bp)));/*type of the free block chain that bp should be stored*/
    size_t size = GET_SIZE(HDRP(bp));
    cur_null_listp = GET(pointer_start + listtype*WSIZE);
    cur_null_list_lastp = GET(pointer_start + (14+listtype)*WSIZE);
    dbg_printf("\n0 GET_SIZE: %lu, %lu; GET_ALLOC: %lu, %lu\n", GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)), GET_ALLOC(HDRP(bp)), GET_ALLOC(FTRP(bp)));
    if(cur_null_list_lastp == NULL){
        PUT(pointer_start + listtype*WSIZE, bp - (size_t)mem_heap_lo());
        PUT(pointer_start + (14+listtype)*WSIZE, bp - (size_t)mem_heap_lo());
        PUT(bp, 0);
        dbg_printf("\nbp = %lu, HDRP(bp) = %lu\n", (size_t)bp - (size_t)mem_heap_lo(), (size_t)HDRP(bp) - (size_t)mem_heap_lo());
        dbg_printf("\n4 GET_SIZE: %lu, %lu; GET_ALLOC: %lu, %lu\n", GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)), GET_ALLOC(HDRP(bp)), GET_ALLOC(FTRP(bp)));
        PUT(bp + (WSIZE), 0);
    }
    else{
        next_blockp = cur_null_listp;
        while(GET_SIZE(HDRP(next_blockp  + (size_t)mem_heap_lo())) < size && next_blockp != cur_null_list_lastp){
            next_blockp = GET(next_blockp  + (size_t)mem_heap_lo() + (WSIZE));
        }
        prev_blockp = GET(next_blockp + (size_t)mem_heap_lo());
        if(GET_SIZE(HDRP(next_blockp  + (size_t)mem_heap_lo())) >= size){
            PUT(next_blockp + (size_t)mem_heap_lo(), bp - (size_t)mem_heap_lo());
            PUT(bp + (WSIZE), next_blockp);
            PUT(bp, prev_blockp);
            if(prev_blockp != NULL){
                PUT(prev_blockp + (size_t)mem_heap_lo() + (WSIZE), bp - (size_t)mem_heap_lo());
            }
            else{/*bp is the new null_listp*/
                PUT(pointer_start + listtype*WSIZE, bp - (size_t)mem_heap_lo());
            }
        }
        else{/*bp is the new null_list_lastp*/
            prev_blockp = next_blockp;
            PUT(bp + (WSIZE), 0);
            PUT(bp, prev_blockp);
            PUT(prev_blockp + (size_t)mem_heap_lo() + (WSIZE), bp - (size_t)mem_heap_lo());
            PUT(pointer_start + (14+listtype)*WSIZE, bp - (size_t)mem_heap_lo());
        }
    }
    dbg_printf("\nGET_SIZE: %lu, %lu; GET_ALLOC: %lu, %lu\n", GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)), GET_ALLOC(HDRP(bp)), GET_ALLOC(FTRP(bp)));
    dbg_printf("\nputin\nbp = %lu, bp_prev = %lu, bp_next = %lu, listtype = %lu\n", (size_t)bp - (size_t)mem_heap_lo(), GET(bp), GET(bp + (WSIZE)), listtype);
}


/* 
 * Delete - Delete free block bp;
 */
static void *Delete(void *bp){
    size_t listtype = Judgetype(GET_SIZE(HDRP(bp)));/*type of the free block chain that bp should be stored*/
    void *next_blockp = GET(bp + (WSIZE));
    void *prev_blockp = GET(bp);
    if(next_blockp == NULL && prev_blockp == NULL){/*next_blkp(bp) is the only one*/
        PUT(pointer_start + listtype*WSIZE, 0);
        PUT(pointer_start + (14+listtype)*WSIZE, 0);
    }
    else if(next_blockp == NULL){/*next_blkp(bp) is the last one*/
        PUT(pointer_start + (14+listtype)*WSIZE, prev_blockp);
        PUT(prev_blockp + (size_t)mem_heap_lo() + (WSIZE), 0);
    }
    else if(prev_blockp == NULL){/*next_blkp(bp) is the first one*/
        PUT(pointer_start + listtype*WSIZE, next_blockp);
        PUT(next_blockp + (size_t)mem_heap_lo(), 0);
    }
    else{/*next_blkp(bp) is among them*/
        PUT(prev_blockp + (size_t)mem_heap_lo() + (WSIZE), next_blockp);
        PUT(next_blockp + (size_t)mem_heap_lo(), prev_blockp);
    }
    return bp;
}


/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words, size_t judge) 
{
    void *bp;
    size_t size;
    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;        
    /* Initialize free block header/footer and the epilogue header*/
    PUT2(HDRP(bp), PACK(size, 0));         /* Free block header */
    if(judge){
        PUT(HDRP(bp), PACK(GET(HDRP(bp)), 2));   
    }
    PUT(FTRP(bp), PACK(size, 0));         /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */                               
    
 
    /* Coalesce if the previous block was free */
    return coalesce(bp);                                          
}


/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block AND PUT BP INTO CHAINS
 */
static void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_ALLOC_PREV(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    void *cur_null_listp;
    void *cur_null_list_lastp;
    dbg_printf("\ncoalesce: prev_alloc = %lu, next_alloc = %lu\n", prev_alloc, next_alloc);
    if (prev_alloc && next_alloc) {            /* Case 1 */
    dbg_printf("\nNo need to coalesce\n");
        Putin(bp);
    }
    else if (prev_alloc && !next_alloc) {      /* Case 2 */
        dbg_printf("\ncoalesce with block next: bp = %lu\n", (size_t)bp - (size_t)mem_heap_lo());
        Delete(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT2(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size,0));/*头的size已经在第一个分配中改变了，因此这里直接用bp即可*/
        Putin(bp);
    }

    else if (!prev_alloc && next_alloc) {      /* Case 3 */
        dbg_printf("\ncoalesce with block prev: bp = %lu\n", (size_t)bp - (size_t)mem_heap_lo());
        Delete(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT2(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
        Putin(bp);        
    }

    else {                                     /* Case 4 */
        dbg_printf("\ncoalesce with block prev and next: bp = %lu\n", (size_t)bp - (size_t)mem_heap_lo());
        Delete(PREV_BLKP(bp));
        Delete(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT2(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
        Putin(bp);
    }
    //dbg_printf("\n\nafter coalesce:null_listp:%lu null_list_lastp:%lu\n\n", null_listp, null_list_lastp);
    return bp;
}


/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static void *place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));   
    Delete(bp);
    //dbg_printf("\nbefore place: brfore bp:%lu after bp:%lu\n", GET(bp), GET(bp + (WSIZE)));
    if ((csize - asize) >= (2*DSIZE)) {
        if(asize > 400){/*make sure that bigger block are allocated in the right side of the heap*/
            dbg_printf("\nplace 1\n");
            PUT2(HDRP(bp), PACK(csize-asize, 0));
            PUT(FTRP(bp), PACK(csize-asize, 0));
            bp = NEXT_BLKP(bp);
            PUT(HDRP(bp), PACK(asize, 1));
            PUT(HDRP(NEXT_BLKP(bp)), PACK(GET(HDRP(NEXT_BLKP(bp))), 2));/*indicate the prev_block is not free*/
            Putin(PREV_BLKP(bp));
            return bp;
        }
        else{/*smaller block can be allocated in the left side, like normal way*/
            dbg_printf("\nplace 2\n");
            PUT2(HDRP(bp), PACK(asize, 1));
            void *tmpbp = bp;
            bp = NEXT_BLKP(bp);
            PUT(HDRP(bp), PACK(csize-asize, 0));
            PUT(HDRP(bp), PACK(GET(HDRP(bp)), 2));/*indicate the prev_block is not free*/
            PUT(FTRP(bp), PACK(csize-asize, 0));
            Putin(bp);
            return tmpbp;
        }
    }
    else { /*如果剩下的部分小于2*DSIZE大小，则不必留作碎片，可直接合并*/
        dbg_printf("\nplace 3\n");
        PUT2(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
        PUT(HDRP(NEXT_BLKP(bp)), PACK(GET(HDRP(NEXT_BLKP(bp))), 2));/*indicate the prev_block is not free*/
        return bp;
    }
}

/* 
 * find_fit - Find a fit for a block with asize bytes 
 */
static void *find_fit(size_t asize)
{
    /* First-fit search */
    void *bp;
    size_t listtype;
    listtype = Judgetype(asize);
    while(listtype <= 13){
        if(GET(pointer_start + listtype*WSIZE) != NULL){
            for (bp = GET(pointer_start + listtype*WSIZE) + (size_t)mem_heap_lo(); bp != mem_heap_lo(); bp = GET(bp + (WSIZE)) + (size_t)mem_heap_lo()) {
                if (asize <= GET_SIZE(HDRP(bp))) {
                    return bp;
                }
            }
        }
        listtype++;/*find_fit in bigger size free block chain*/
    }
    return NULL; /* No fit */
}
