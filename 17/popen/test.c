#include <stdio.h>
#include <unistd.h>

#define COMMAND_LEN 8
#define DATA_SIZE 512

int main(int argc,char *argv[]){


    FILE *pf;
       char command[COMMAND_LEN];
       char data[DATA_SIZE];

       // Execute a process listing
       sprintf(command, "ls -al");

       // Setup our pipe for reading and execute our command.
       pf = popen(command,"r");

       if(!pf){
         fprintf(stderr, "Could not open pipe for output.\n");
         return 0;
       }

       // Grab data from process execution
       
	   
	   while (fgets(data, DATA_SIZE , pf) != NULL)
	   {
       // Print grabbed data to the screen.
       fprintf(stdout, "got from pipe: %s",data);
       }
       if (pclose(pf) != 0)
           fprintf(stderr," Error: Failed to close command stream \n");

       return 0;
}
