writing a shell
===============

You are supposed to write a program, which does the following

* When started, it shows user a prompt. Prompts for root and non-root users differ.

** it could be '$' and '#' sign, for example.

* It expects the user to enter a command.

** The "command" could have arguments. It could look like "ls -al", or "cc -o smth smth.c"

** The "command" can be sent to the background in the way you prefer. The common way would be to use the '&' character at the end of the command". Example: "./longcomputation &"

** The "command" can be located in the directories listed in PATH environment variable, as well as in the current directory.

* When the command have been entered and the "Enter" key have been pressed, the program uses functions

** fork()

** wait() - if process should not run in background.

** exec() family functions (evecvp, execle, etc)

in order to execute a given program.
```

                 Prompt <---------------------------------|
                    |                                     |
                 Input received                           |
                    |                                     |
                  fork()                                  |
                    |                                     |
              is this program a child?                    |
       yes  |                         | no                |
            |                         |                   |
            |                      is this a fg job?      |
            |                      |               |      |
            |                     yes             no      |
            |                      |               |      |
        execute the         wait for the child     |      |
        given program       process to end         |      |
        with arguments         with wait()         |      |
    by using execvp or                |            |      |
     its friends.                     --------------------| 
            |
            |
            |
        was exec family function
        able to run the other
        process?
 yes |                       | no
     |                       |
     |                print an error
     |                       |
             child exits.

```

* You need to provide a makefile. This will be especially useful, if you would have several output object files, and would link those together. We will compile the program by changing to the directory with your github username and typing "make".

how to contribute the assignment
================================

https://classroom.github.com/a/modEBU4x

hints
======

http://www.cs.ecu.edu/karl/4630/sum01/example1.html
http://www.csl.mtu.edu/cs4411.ck/www/NOTES/process/fork/fork-04.c
http://www.csl.mtu.edu/cs4411.ck/www/NOTES/process/fork/wait.html
https://stackoverflow.com/questions/8319484/regarding-background-processes-using-fork-and-child-processes-in-my-dummy-shel
https://stackoverflow.com/questions/21173622/fork-and-wait-in-a-shell-program
http://linuxgazette.net/111/ramankutty.html
https://stackoverflow.com/questions/4788374/writing-a-basic-shell
https://brennan.io/2015/01/16/write-a-shell-in-c/

manual pages of the system calls you would/might want to use (getpid(), fork(), wait(), execvp() )

Deadline
========

11/09/2018 23:59 +0400
