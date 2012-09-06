


%helps
======

Variable defining the path of help directories



Description
~~~~~~~~~~~

BEWARE: This variable must NOT be modified by users.

The global variable `%helps` is an N x 2 matrix of strings. The kth
row of `%helps`, `%helps(k,:)` represents the kth chapter of the
manual and is made of two strings:

`%helps(k,1)` is the absolute pathname for a help directory.

`%helps(k,2)` is a title for this help directory.

To add a new help directory, the user should use `add_help_chapter`.



See Also
~~~~~~~~


+ `add_help_chapter`_ Add an entry in the help list
+ `help`_ on-line help command


.. _add_help_chapter: add_help_chapter.html
.. _help: help.html


