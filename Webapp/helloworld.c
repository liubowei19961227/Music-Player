#include <stdio.h>

int main(int argc, char *argv[]) {
	printf("This is the c program.\n");
	if (argc != 3){
		printf("Something's wrong.");
	}
	else {
		printf("arg 1: %s\n", argv[1]);
		printf("arg 2: %s\n", argv[2]);
	}
return 0;
}