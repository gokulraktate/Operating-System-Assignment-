//white a c or cpp program to Parent creating child process using fork() system call.

#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
  int PID;
  PID=fork();
  if (PID==0)
  printf("this is child process...its Pid is...>%d\n",getpid());
  else
  sleep(5);
  printf("This is parent process...its pid is....>%d\n",getpid());
 return 0;
}
