Subject Code and Course Number:			CS 331
Course Title:							  Operating System Principles
Number of Credits:				      3
Instructor Name:					    Norayr Chilingarian
Email Address:							nchilingaryan@aua.am
Telephone Number:						010 492450

Office Location:			  336W (PAB)
Office Hours:					Tue(19:30-20:30), Th(19:30-20:30), also by appointment.
Term/Year: 
Class Schedule:				MW 9:30-10:20 at 614M
        F 9:30-10:20 at 002M


Course Description:  

The organization and structure of modern operating systems. System level programming on Linux and Windows operating systems.
The course covers - operating system concepts and components, processes, threads, synchronization (mutex, semaphores, condition variables), deadlock, CPU scheduling, memory management, file systems, device drivers.

Students are required to demonstrate intermediate knowledge of software and hardware systems related to computational sciences.

Students are required to complete individual projects related to system programming (threads, processes, drivers).

Three hours of instructor-led class time per week including discussions and problem sets.


Required Materials: 
Andrew Tanenbaum: Modern Operating Systems.
Andrew Tanenbaum, Albert S. Woodhull: Operating Systems Design and Implementation (The Minix book).
Brian Kernighan, Rob Pike: The Unix Programming Environment.

Also, take a look at [this](https://github.com/operating-systems-2018/notes/blob/master/literature.md) list.


Schedule & Topics: [Note:  Review and Q&A in preparation for exams should be scheduled and noted on syllabus.]



| Week 	| Topic                                                                                                                               	| Assignment                                                                                               	| Deadline 	|   	|
|------	|-------------------------------------------------------------------------------------------------------------------------------------	|----------------------------------------------------------------------------------------------------------	|----------	|---	|
| 1    	| What is an OS? History of operating systems.                                                                                        	| Getting a work environment.                                                                              	|          	|   	|
|      	| OS concepts, structure. Processes, files, the shell.                                                                                	|                                                                                                          	|          	|   	|
|      	| Day-to-day use: files, i/o, streams, and common commands.                                                                           	| Create a simple spell checker by using shell tools and pipelines.                                        	|          	|   	|
| 2    	| Using the shell. Commandline arguments, env. variables,  filters, loops, traps. Editors.                                            	| Shell scripting assignment.                                                                              	|          	|   	|
|      	| Using the shell.                                                                                                                    	|                                                                                                          	|          	|   	|
|      	| Lab on the topics of the week lectures.                                                                                             	|                                                                                                          	|          	|   	|
| 3    	| Programming toolchains, compilers, preprocessor,linker, debugger, make tool.                                                        	|                                                                                                          	|          	|   	|
|      	| Kernel calls vs libc. Commandline arguments, stdin, stdout. Work with files in shell.                                               	| Use write(), exit() system calls from via libc or calling the kernel syscalls directly, bypassing libc.. 	|          	|   	|
|      	| Lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 4    	| Mid Term Examination                                                                                                                	|                                                                                                          	|          	|   	|
|      	| Boot loader, kernel. Storage, File systems: layouts, file access, attributes, operations.                                           	| Compile and boot a Unix kernel.                                                                          	|          	|   	|
|      	| Lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 5    	| Devices as files. Character and block devices. Terminals. Links.                                                                    	| Work with VT100 attributes.                                                                              	|          	|   	|
|      	| Work with files and directories by using libc functions.                                                                            	| Implement directory listing program.                                                                     	|          	|   	|
|      	| Lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 6    	| Processes. Process states, creation, termination.                                                                                   	|                                                                                                          	|          	|   	|
|      	| More system calls: Exec*(), Fork(), Wait().                                                                                         	| Write a simple Unix shell                                                                                	|          	|   	|
|      	| lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 7    	| More on processes and system calls: tracing. strace, dtrace.                                                                        	|                                                                                                          	|          	|   	|
|      	| Mid Term Examination                                                                                                                	|                                                                                                          	|          	|   	|
|      	| lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 8    	| Processes: Interrupts, pipes, signals, sleep and wakeups.                                                                           	| Catch an interrupt.                                                                                      	|          	|   	|
|      	| More IPC: FIFOs, File locking. Producers and consumers.                                                                             	|                                                                                                          	|          	|   	|
|      	| Lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 9    	| Sockets, TCP stack, tools (netcat...)                                                                                               	| Write a forking TCP server.                                                                              	|          	|   	|
|      	| Datagram sockets, Blocking, select(), serialization.                                                                                	|                                                                                                          	|          	|   	|
|      	| lab on the topics of the week                                                                                                       	|                                                                                                          	|          	|   	|
| 10   	| More IPC: Semaphores                                                                                                                	|                                                                                                          	|          	|   	|
|      	| More IPC: Shared memory                                                                                                             	| Simple console chat which uses shared memory and semaphore locks for concurrency.                        	|          	|   	|
|      	| lab on the topics of the week                                                                                                       	|                                                                                                          	|          	|   	|
| 11   	| Coroutines. Threads. User-space threads and kernel space threads.                                                                   	|                                                                                                          	|          	|   	|
|      	| Midterm Examination                                                                                                                 	|                                                                                                          	|          	|   	|
|      	| lab on the topics of the week                                                                                                       	|                                                                                                          	|          	|   	|
| 12   	| Classical IPC Problems: Dining philosophers, sleeping barber, monitors, readers and writers.                                        	| Solve one of the classical IPC problems.                                                                 	|          	|   	|
|      	| Classical IPC problems: Race conditions, critical sections, mutexes. Message queues.                                                	|                                                                                                          	|          	|   	|
|      	| lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 13   	| More IPC: memory mapped files. Malloc() and alloca().                                                                               	|                                                                                                          	|          	|   	|
|      	| Memory management. Paging, Page tables.                                                                                             	|                                                                                                          	|          	|   	|
|      	| lab on the topics of the week.                                                                                                      	|                                                                                                          	|          	|   	|
| 14   	| Design issues for paging systems.                                                                                                   	|                                                                                                          	|          	|   	|
|      	| Stack and Heap. API and ABI. Calling conventions and FFI.                                                                           	|                                                                                                          	|          	|   	|
|      	| lab on the topics of the week                                                                                                       	|                                                                                                          	|          	|   	|
| 15   	| Alternative approaches to OS design. Oberon, Inferno. Memory protection in single space systems, design benefits and disadvantages. 	|                                                                                                          	|          	|   	|
|      	| Project Completion/Submission                                                                                                       	|                                                                                                          	|          	|   	|
|      	| Final Examination                                                                                                                   	|                                                                                                          	|          	|   	|
