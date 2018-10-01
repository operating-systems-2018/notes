#include <stdio.h>
#include <stdlib.h>
#include <signal.h> //  our new library 
volatile sig_atomic_t flag = 0; //sig_atomic_t type is guaranteed to be atomically accessible.
void my_function(int sig){ // can be called asynchronously
  flag = 1; // set flag
}

int main(){
  // Register signals 
  signal(SIGINT, my_function); 
  //      ^          ^
  //  Which-Signal   |-- which user defined function registered
  while(1)  
    if(flag){ // my action when signal set it 1
        printf("\n Signal caught!\n");
        printf("\n default action it not termination!\n");
        flag = 0;
    }     
  return 0;
}  
