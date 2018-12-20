link: https://classroom.github.com/a/Ax50X1zs

in this assignment you are supposed to write simple internet client and server.

client
------

* gets an IP or hostname address to connect to as commandline argument, i. e.

```
./client 127.0.0.1 6666
```

or

```
./client localhost 6666
```

or

```
./client myserver.mydomain.am 6666
```

* creates socket with socket()

* makes a connection with connect()

* prompts user to input a string to send to the server.
reads the string, sends to the server with write().

* when receives an answer from the server, prints it to standard output.

* stays connected as long as server does not close the connection.

server
======

gets a port to listen to as commandline argument.

```
./server 2345
```

in the example above, the server will listen on the port 2345.

creates socket with socket(), binds to the port with bind(), listens with listen() for incoming connections.

when the client connects, and connection is accepted (accept() returns new socket descriptor), the server makes fork(), then checks if it's a parent or a child.

if it's a child, it waits for the client to write something and prints the received message to stdout.

if the client sends string 'bye' then the server closes the connection and the child exits.


references
==========

* http://beej.us/guide/bgnet/output/html/multipage/index.html

* http://beej.us/guide/bgnet/output/html/multipage/getaddrinfoman.html

* http://beej.us/guide/bgnet/output/html/multipage/sockaddr_inman.html

* http://beej.us/guide/bgnet/output/html/multipage/connectman.html

* http://beej.us/guide/bgnet/output/html/multipage/bindman.html

* http://beej.us/guide/bgnet/output/html/multipage/socketman.html

deadline
========
19/12 23:59
