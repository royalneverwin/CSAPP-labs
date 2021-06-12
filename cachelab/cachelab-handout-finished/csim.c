/*王新昊 1900011102*/
#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>


/*打印help菜单*/
void PrintHelp(){
    printf(" -h: Optional help flag that prints usage info\n");
    printf(" -v: Optional verbose flag that displays trace info\n");
    printf("-s <s>: Number of set index bits (S = 2s is the number of sets)\n");
    printf("-E <E>: Associativity (number of lines per set)\n");
    printf("-b <b>: Number of block bits (B = 2b is the block size)\n");
    printf("-t <tracefile>: Name of the valgrind trace to replay\n");
}


/*定义一个行*/
struct line{
    int tag;    /*标记位*/
    int valid;   /*有效位*/
    int existTime;   /*用于LRU判断是否交换*/
};


/*定义一个组*/
struct set{
    struct line *lines;  /*一组里面的行*/
};


/*定义整个cache*/
struct cache{
    int s;  /*cache的组数*/
    int b;  /*cache里面的行数*/
    int E;  /*每组的行数*/
    struct set *sets;   /*cache里面的组*/
};


/*创造cache变量*/
struct cache scache;

/*命中次数*/
int hit_count = 0;  

/*未命中次数*/
int miss_count = 0;    

/*从cache中移除块次数*/
int eviction_count = 0;     

/*命令行参数是否有“-v”*/
int ifV = 0;    


/*初始化realS*/
int CreateS(int s){
    int i;
    int result = 1;
    for(i = 1; i <= s; i++){
        result *= 2;
    }
    return result;
}


/*检查命令行参数输入合法性*/
void CheckOp(char *curOptarg){
    if(curOptarg[0] == '-'){
        printf("Need op\n");
        exit(0);
    }
}


/*初始化cache*/
void InitializeCache(int realS, int E, int b){
    int i, j;
    scache.s = realS;
    scache.E = E;
    scache.b = b;
    scache.sets = (struct set*)malloc(realS * sizeof(struct set));
    for(i = 0; i < realS; i++){  /*初始化set*/
        scache.sets[i].lines = (struct line*)malloc(E * sizeof(struct line));
        for(j = 0; j < E; j++){  /*初始化line*/
            scache.sets[i].lines[j].tag = -1;
            scache.sets[i].lines[j].valid = 0;
            scache.sets[i].lines[j].existTime = 0;
        }
    }
}


/*通过address得到tag*/
unsigned long GetTag(unsigned long address, int s, int b){
    return (address >> (s + b));
}


/*通过address得到set*/
unsigned int GetSet(unsigned long address, int s, int b){
    unsigned long temp = 1;
    unsigned long sum =  0;
    int i;
    for(i = 1; i <= s; i++){
        sum += temp;
        temp *= 2;
    }
    return (address >> b) & sum;
}


/*更新每行的existTime*/
void UpdateExistTime(int realS, int E){
    int i, j;
    for(i = 0; i < realS; i++){
        for(j = 0; j < E; j++){
            if(scache.sets[i].lines[j].valid == 1){
                scache.sets[i].lines[j].existTime++;
            }
        }
    }
}


/*在组getSet中寻找是否有地点放置或匹配到相同标记*/
void FindPlace(unsigned long getTag, unsigned int getSet, int E){
    int i;
    int maxExistTime = 0;
    int maxIndex = 0;
    for(i = 0; i < E; i++){  /*在cache中读到数据*/
        if(scache.sets[getSet].lines[i].valid == 1 && scache.sets[getSet].lines[i].tag == getTag){
            hit_count++;
            scache.sets[getSet].lines[i].existTime = 0;
            if(ifV){    /*如果有-V显示verbose*/
                printf(" hit");
            }
            return;
        }
    }
    miss_count++;
    if(ifV){    /*如果有-V显示verbose*/
        printf(" miss");
    }
    for(i = 0; i < E; i++){  /*在cache中未读到但set未满*/
        if(scache.sets[getSet].lines[i].valid == 0){
            scache.sets[getSet].lines[i].valid = 1;
            scache.sets[getSet].lines[i].tag = getTag;
            return;
        }
    }
    eviction_count++;
    if(ifV){    /*如果有-V显示verbose*/
        printf(" eviction");
    }
    for(i = 0; i < E; i++){  /*在cache中读到但set满了*/
        if(scache.sets[getSet].lines[i].existTime > maxExistTime){
            maxExistTime = scache.sets[getSet].lines[i].existTime;
            maxIndex = i;
        }
    }
    scache.sets[getSet].lines[maxIndex].tag = getTag;
    scache.sets[getSet].lines[maxIndex].existTime = 0;
    return;
}


/*最后释放所有空间*/
void Delete(int realS, int E){
    int i;
    for(i = 0; i < realS; i++){
        free(scache.sets[i].lines);
    }
    free(scache.sets);
}


/*main函数*/
int main(int argc, char *argv[]){
    int result;  /*用来遍历*argv[]*/
    int s;  /*存放s*/
    int realS;  /*cache组数*/
    int E;  /*存放E*/
    int b;  /*存放b*/
    char tracefile[50];  /*存放文件名*/
    unsigned long address;   /*操作的地址*/
    char op;    /*操作*/
    int size;   /*大小*/
    unsigned long getTag;     /*通过address得到tag*/
    unsigned int getSet;     /*通过address得到set*/
    while((result = getopt(argc, argv, "hvs:E:b:t:")) != -1){
        switch(result){
            case 'h':   /*if -h*/
                PrintHelp();
                break;
            case 'v':   /*if -v*/
                ifV = 1;
                break;
            case 's':   /*处理 -s*/
                CheckOp(optarg);
                s = atoi(optarg);
                break;
            case 'E':   /*处理 -E*/
                CheckOp(optarg);
                E = atoi(optarg);
                break;
            case 'b':   /*处理 -b*/                
                CheckOp(optarg);
                b = atoi(optarg);
                break;
            case 't':   /*处理 -t*/
                strcpy(tracefile, optarg);
                break;
            default:
                PrintHelp();
                return 0;
        }
    }
    /*检查输入合法性*/
    if(s <= 0 || E <= 0 || b <= 0){
        printf("error input\n");
        return 0;
    }
    realS = CreateS(s);
    InitializeCache(realS, E, b);
    FILE* tfile = fopen(tracefile, "r");
    /*检查文件合法性*/
    if(tfile == NULL){
        printf("wrong file\n");
        return 0;
    }
    while(fscanf(tfile, " %c%lx,%d", &op, &address, &size) != EOF){
        getTag = GetTag(address, s, b);
        getSet = GetSet(address, s, b);
        if(ifV){       /*如果有-v，输出verbose*/
            printf("%c %lx,%d", op, address, size);
        }
        switch(op){
            case 'L':
                FindPlace(getTag, getSet, E);
                break;
            case 'S':
                FindPlace(getTag, getSet, E);
                break;
            case 'M':
                FindPlace(getTag, getSet, E);
                FindPlace(getTag, getSet, E);
            default:
            break;
        }
        if(ifV){       /*如果有-v，输出verbose*/
            printf("\n");
        }
        UpdateExistTime(realS, E);
    }
    Delete(realS, E);
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
