#include <stdlib.h>
#include <string.h>

char* strings_merge(char* str1, char* str2){
	
	char* new_str = (char*)malloc(strlen(str1)+strlen(str2));
	strcat(new_str, str1);
	strcat(new_str, str2);
	
	return new_str;
	
}
