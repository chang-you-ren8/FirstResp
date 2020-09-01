#include<stdio.h>
#include<string.h>

int main(int argc, char *argv[])
{
	int value = 5;
	char buffer1[8], buffer2[8];
	
	printf("%ld\n", (long)&value);

	for(int i = 0; i < 8; ++i)
	{
		printf("%ld ", (long)&buffer1[i]);
	}

	//puts(" ");

	for(int i = 0; i < 8; ++i)
	{
		printf("%ld ", (long)&buffer2[i]);
	}
	/*
	strcpy(buffer1,  "one");
	strcpy(buffer2, "two");
	
	printf("[BEFORE] buffer2 is at %p and contains \'%s\'\n", buffer2, buffer2);
	printf("[BEFORE] buffer1 is at %p and contains \'%s\'\n", buffer1, buffer1);
	printf("[BEFORE] value is at %p and is %d (0x08)\n", &value, value, value);
	
	printf("\n[STRCPY] copying %d bytes into buffer2\n\n", strlen(argv[1]));
	strcpy(buffer2, argv[1]);

	printf("[AFTER] buffer2 is at %p and contains \'%s\'\n", buffer2, buffer2);
	printf("[AFTER] buffer1 is at %p and contains \'%s\'\n", buffer1, buffer1);
	printf("[AFTER] value is at %p and is %d (0x80)\n", &value, value,value);
	*/
}
