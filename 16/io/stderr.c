#include <stdio.h>
#include <unistd.h> // for sleep()

int main()
{

   while (1)
   {
     fprintf(stderr, ".");
     sleep (1);
   }
  
   return 0;

}
