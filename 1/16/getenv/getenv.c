#include <stdio.h>
#include <stdlib.h> // for getenv

int main()

{

  char* server_name;

  server_name = getenv("SERVER_NAME");

  if (server_name == NULL)
  {
     // environment variable was not set, use default
     server_name = "aua.am";

  }

  printf ("connecting to %s\n", server_name);

  return 0;
}


