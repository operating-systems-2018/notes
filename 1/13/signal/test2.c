#include <signal.h>
#include <stdio.h>
void sigint(int a)
{
    printf("sigstp caught\n"); // not safe
}

void sigint2(int a)
{
    printf("can't touch me\n"); // not safe
}



int main()
{
    signal(SIGTSTP, sigint);
    signal(SIGINT, sigint2);
    while (1) {};
    return 0;
}
