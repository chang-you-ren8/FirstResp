#include<stdlib.h>
#include<unistd.h>
#include<stdio.h>

int main()
{
	pid_t pid = fork();
	switch(pid)
	{
		case 0:
			puts("in son process");	break;
		case -1:
			puts("fork error");	exit(1);
		default:
			puts("in father");	break;
	}
	
	printf("in process %d\n", (int)pid);
	return 0;
}

