#include <signal.h>
#include <stdio.h>
void sigint(int a)
{
    printf("signal %d received, ^C caught\n", a); // not safe
}

int main()
{
    signal(SIGINT, sigint);
    while (1) {};
    return 0;
}
