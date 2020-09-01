#include<unistd.h>
#include<iostream>
using std::cout ;

int main()
{
	pid_t pid = fork();
	if(pid == 0)
	{
		cout << "in son process\n";
	}
	else if (pid > 0)
	{
		cout << "in father\n";
	}
	else
	{
		cout << "fork error\n";
		exit(1);
	}
	
	return 0;
}
