#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int
main(int ac, char **av)
{
    pid_t cpid;
    switch (cpid = fork()) {
    case 0:   // Child process
        break;
    case -1:  // Error
        break;
    default:  // parent process
        break;
    }
    return 0;
}

//https://unix.stackexchange.com/questions/199686/fork-vs-clone-on-2-6-kernel-linux
