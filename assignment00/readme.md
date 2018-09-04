
```
  No man is an island,
  Entire of itself,
  Every man is a piece of the continent,
  A part of the main.
  If a clod be washed away by the sea,
  Europe is the less.
  As well as if a promontory were.
  As well as if a manor of thy friend's
  Or of thine own were:
  Any man's death diminishes me,
  Because I am involved in mankind,
  And therefore never send to know for whom the bell tolls;
  It tolls for thee. 
```

Software writing principles.
===========================
One of the messages about good software practices we got from the Unix designers is "Program does one thing, and does it good". On the opposite, too often we face programs, that "do everything, and do it bad".

Programs can interoperate, be connected with each other.
So no program is an island entire of itself.

Kernigan on Unix
================

Watch the video from the AT&T Tech channel https://www.youtube.com/watch?v=tc4ROCJYbm0

The task
======
* You have a file named 'text_to_spell'.
* You have a file named 'dictionary'.

Copy/commit these files to your repository.

* Create a shell script, which will take the file to spell, and by using the dictionary, print to the standard output words that contain mistakes.

Use pipeline to solve the problem.

Use this link to get an assignment.

Refer to [this tutorial](https://github.com/operating-systems-2018/notes/blob/master/asgmnt_tutorial.md) on how to create a team with one member (you!) and a repository for your team will be created automatically.

The shell script has to be uploaded to your teams' github repository of this assignment.

We'll check your script by running it like:

```
$ ./yourscript text_to_spell
```

and we expect certain mistaken words to be written to stdout.

```
$ ./spellcheck.sh text_to_spell 
compined
laborotories
privide
$
```

Deadline
========
Thu 2018-09-16 23:59 AM.




