#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
* @return: returns true (1) if str is a palindrome, -1 if str is NULL, otherwise false (0).
*/
int pal(char *str) {
	if (str==NULL){return -1;}
 
  	int j = -1;
  	for (int i = 0; str[i]; i++){
    		if (str[i] != ' '){
        		str[++j] = str[i];
		}
	}
  	str[++j] = '\0';


	int taille = strlen(str);
	for (int i=0; i<taille/2 ;i++){
		if (str[i]!=str[taille-1-i]){
			return 0;
		}
	}
	return 1;
}

int main(int argc, char *argv[]){
	char * str= argv[1];
	char * out;
	int resp = pal(str);
	if(resp ==-1){out = "c'est un null";}
	else if (resp == 1){out = "oui, c'est un palindrome";}
	else {out = "non, ce n'est pas un palindrome";}  
	printf("%s est il un palindrome ? %s \n", str ,out);
return 0;
}

