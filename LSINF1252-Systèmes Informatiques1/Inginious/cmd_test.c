#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int main( int argc, char *argv[] ) {
int nb1 = atoi(argv[1]);
int nb2 = atoi(argv[3]);
    	if (strcmp(argv[2],"-eq")==0){
        	if (nb1==nb2){return 0;}
    	}else if(strcmp(argv[2],"-ge")==0){
		if (nb1>=nb2){return 0;}
	}else if(strcmp(argv[2],"-gt")==0){
                if (nb1>nb2){return 0;}
        }else if(strcmp(argv[2],"-le")==0){
                if (nb1<=nb2){return 0;}
	}else if(strcmp(argv[2],"-lt")==0){
                if (nb1<nb2){return 0;}
	}else if(strcmp(argv[2],"-ne")==0){
                if (nb1!=nb2){return 0;}
        }

return 1;
}


